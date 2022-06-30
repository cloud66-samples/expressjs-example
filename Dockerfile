FROM node:16

RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get install curl zip libvips-dev libvips-tools -y \
&& rm -rf /var/lib/apt

# Just Dockerfile
COPY . /app
RUN yarn install
