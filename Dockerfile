FROM hashicorp/packer:light

RUN packer plugins install github.com/hashicorp/amazon v1.1.0

RUN apk add --no-cache --update python3 jq make aws-cli py3-pip tzdata
RUN pip3 install --no-cache boto3

ENV TZ=Australia/Sydney
RUN cp /usr/share/zoneinfo/Australia/Sydney /etc/localtime

# given the plugin github.com/hashicorp/amazon uses directory /tmp, 
# it is best to avoid this directory when using this image,
# also applies to cconsumers' docker-compose reference to this image
WORKDIR /workspace
