FROM hashicorp/packer:light

RUN apk add --no-cache --update python3 jq make aws-cli
