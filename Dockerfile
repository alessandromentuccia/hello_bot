FROM rasa/rasa:2.0.2-full
#ENV HTTP_PROXY=http://podto2-proxy.site02.nivolapiemonte.it:3128
#ENV HTTPS_PROXY=http://podto2-proxy.site02.nivolapiemonte.it:3128
#ENV NO_PROXY=localhost,127.0.0.1,.csi.it,.site02.nivolapiemonte.it

#define the working directory of Docker container
WORKDIR /app 

#copy everything in ./actions directory (your custom actions code) to /app/actions in container
COPY ./ /app/actions

USER root

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER 1001

# the entry point
#EXPOSE 5005
#ENTRYPOINT ["rasa"]
#CMD ["--help"]
