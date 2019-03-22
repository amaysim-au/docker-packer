FROM hashicorp/packer:light

RUN apk add --no-cache --update python3 jq
RUN pip3 install --no-cache boto3 awscli
