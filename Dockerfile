FROM python:3

RUN curl -o /usr/local/bin/aws-iam-authenticator --location "https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/linux/amd64/aws-iam-authenticator" \ 
    && chmod +x /usr/local/bin/aws-iam-authenticator \
    && pip3 install boto3 kubernetes pytest 