# Static "coming soon" page served by nginx — no build step, no Node, no React.
FROM nginx:1.27-alpine

# Drop the static assets into nginx's default web root.
COPY index.html styles.css /usr/share/nginx/html/

# nginx:alpine already serves /usr/share/nginx/html on port 80.
EXPOSE 80
