FROM node:16

# this is our Dockerfile
RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get install curl zip libvips-dev libvips-tools -y \
&& rm -rf /var/lib/apt

COPY . /app
RUN yarn install
