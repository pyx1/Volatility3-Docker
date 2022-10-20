FROM python:latest

RUN apt update && apt full-upgrade -y 

COPY ./vol3.zip /vol3.zip
RUN unzip /vol3.zip -d /volatility/
RUN rm /vol3.zip
RUN echo "alias volatility='python /volatility/vol.py'" >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]