FROM centos:latest

# Add Maintainer Info
LABEL maintainer="Matt Kimberley <mattkimberley84@gmail.com>"

RUN dnf -y update && \
    dnf -y install nginx

# Expose port 8080 to the outside world
EXPOSE 80 443

# Command to run the executable
CMD ["nginx"]