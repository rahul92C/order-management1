FROM nginx:1.23.1-alpine
COPY build /usr/share/nginx/html

FROM bitnami/trivy:latest
RUN mkdir /opt/trivy
WORKDIR /opt/trivy
RUN trivy bitnami/trivy:latest
