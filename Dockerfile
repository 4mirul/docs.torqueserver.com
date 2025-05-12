# Stage 1: Build the MkDocs site using squidfunk/mkdocs-material
FROM squidfunk/mkdocs-material:latest AS builder

WORKDIR /docs

# Copy MkDocs project files
COPY mkdocs.yml .
COPY docs ./docs

# Build the static site (outputs to /docs/site)
RUN mkdocs build --strict

# Stage 2: Serve the built site with Nginx
FROM nginx:alpine

# Copy the static site from the builder
COPY --from=builder /docs/site /usr/share/nginx/html

# (Optional) Custom Nginx config
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]