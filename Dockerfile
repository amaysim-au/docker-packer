FROM hashicorp/packer:light

RUN apk add --no-cache --update python3 jq make aws-cli py3-pip
RUN pip3 install --no-cache boto3
