FROM python:3.5
MAINTAINER muxistudio <muxistudio@qq.com>

ENV DEPLOY_PATH /ccnubox_officalsite

RUN mkdir -p $DEPLOY_PATH
WORKDIR $DEPLOY_PATH

Add requirements.txt requirements.txt
RUN pip install --index-url http://pypi.doubanio.com/simple/ -r requirements.txt --trusted-host=pypi.doubanio.com

Add . .
