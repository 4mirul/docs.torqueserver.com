pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'docs-torqueserver'  // You can change this to your preferred image name
        DOCKER_TAG = "${env.BUILD_NUMBER}"  // Using build number as tag
        DOCKER_REGISTRY = '4mirul'
        // If you need credentials, set them up in Jenkins and reference here
        REGISTRY_CREDENTIALS = credentials('jenkins-dockerhub') // Change to your Jenkins credentials ID
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build with cache from registry if available
                    docker.build("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}", 
                               "--build-arg BUILDKIT_INLINE_CACHE=1 .")
                }
            }
        }

        stage('Test Container') {
            steps {
                script {
                    // Run container and test if Nginx is serving MkDocs
                    def testContainer = docker.run(
                        "${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}",
                        '-d -p 8080:80 --name docs-torqueserver'
                    )
                    try {
                        // Wait for container to start
                        sleep 5
                        // Test if the site is accessible
                        def status = sh(
                            script: "curl -s -o /dev/null -w '%{http_code}' http://localhost:8080",
                            returnStdout: true
                        ).trim()
                        
                        if (status != '200') {
                            error "Test failed: Expected HTTP 200 but got ${status}"
                        }
                        
                        // Additional test - check if index.html exists
                        sh "docker exec docs-torqueserver ls /usr/share/nginx/html/index.html"
                        
                        echo "Tests passed successfully"
                    } finally {
                        // Clean up test container
                        sh "docker stop docs-torqueserver || true"
                        sh "docker rm docs-torqueserver || true"
                    }
                }
            }
        }

        stage('Push to Registry') {
            when {
                // Only push for main branch or tags
                anyOf {
                    branch 'main'
                    branch 'master'
                    tag '*'
                }
            }
            steps {
                script {
                    // Login to registry and push image
                    docker.withRegistry("https://${DOCKER_REGISTRY}", REGISTRY_CREDENTIALS) {
                        docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}").push()
                        
                        // Also push as 'latest' if this is the main branch
                        if (env.BRANCH_NAME == 'main' || env.BRANCH_NAME == 'master') {
                            docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}").push('latest')
                        }
                    }
                }
            }
        }

        stage('Deploy') {
            when {
                // Only deploy for main branch or tags
                anyOf {
                    branch 'main'
                    branch 'master'
                    tag '*'
                }
            }
            steps {
                script {
                    // Example deployment command - adjust based on your needs
                    echo "Deploying ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}"
                    
                    // For simple deployment (update container):
                    sh """
                        docker pull ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}
                        docker stop docs-torqueserver || true
                        docker rm docs-torqueserver || true
                        docker run -d -p 80:80 \
                            --name docs-torqueserver \
                            ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}
                    """
                }
            }
        }
    }

    post {
        always {
            echo 'Cleaning up workspace'
            cleanWs()
        }
        success {
            echo "Pipeline succeeded! Image available at:"
            echo "${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}"
        }
        failure {
            echo 'Pipeline failed'
            // Add notification here if needed
        }
    }
}