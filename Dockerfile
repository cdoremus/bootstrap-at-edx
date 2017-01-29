# Dockerfile
#
# Serves the application in a Docker container using the nginx server
#
# To start a docker container and build an image with this application, run:
# docker build -t bootstrap-edx .
#
# To start the application
# docker run -p 80:80 -it bootstrap-edx
#
# Navigate to http://localhost:80
#
# To cleanup the container:
# docker rm <container_id>
# The container id can be obtained by running the command: docker ps -a
#
# Once tne container is removed, delete the image:
# docker rmi bootstrap-edx
#
#
FROM nginx
COPY examples /usr/share/nginx/html/examples
COPY labs /usr/share/nginx/html/labs
COPY resources /usr/share/nginx/html/resources
COPY index.html /usr/share/nginx/html
EXPOSE 80
