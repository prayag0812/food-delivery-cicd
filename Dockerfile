FROM nginx:latest

RUN echo "PRT – Food Delivery App Deployment Successful" > /usr/share/nginx/html/index.html

EXPOSE 80
