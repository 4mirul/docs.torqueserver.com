pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'docs-torqueserver'  // You can change this to your preferred image name
        DOCKER_TAG = "${env.BUILD_NUMBER}"  // Using build number as tag
        DOCKER_REGISTRY = '4mirul'
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
                    sh """
                        docker stop ${DOCKER_IMAGE} || true
                        docker rm ${DOCKER_IMAGE} || true
                        docker run -d -p 8084:80 \
                            --name docs-torqueserver \
                            ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}
                    """

                    try {
                        // Wait for container to start
                        sleep 5
                        // Test if the site is accessible
                        def status = sh(
                            script: "curl -s -o /dev/null -w '%{http_code}' http://localhost:8084",
                            returnStdout: true
                        ).trim()
                        
                        if (status != '200') {
                            error "Test failed: Expected HTTP 200 but got ${status}"
                        }
                        
                        // Additional test - check if index.html exists
                        sh "docker exec ${DOCKER_IMAGE} ls /usr/share/nginx/html/index.html"
                        
                        echo "Tests passed successfully"
                    } finally {
                        // Clean up test container
                        sh "docker stop ${DOCKER_IMAGE} || true"
                        sh "docker rm ${DOCKER_IMAGE} || true"
                    }
                }
            }
        }

        stage('Push to Registry') {
            steps {
                script {
                    // Login to registry and push image
                    docker.withRegistry("https://registry.hub.docker.com", 'jenkins-dockerhub') {
                        docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}").push()
                        docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}").push('latest')
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Example deployment command - adjust based on your needs
                    echo "Deploying ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}"
                    
                    // For simple deployment (update container):
                    sh """
                        docker pull ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}
                        docker stop ${DOCKER_IMAGE} || true
                        docker rm ${DOCKER_IMAGE} || true
                        docker run -d -p 8084:80 \
                            --name docs-torqueserver \
                            ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest
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
            echo "${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest"
        }
        failure {
            echo 'Pipeline failed'
            // Add notification here if needed
        }
    }
}