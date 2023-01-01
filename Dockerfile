FROM harshjais369/ProfessorBot:latest

RUN apt-get update && apt-get -y install \
    python3 python3-dev python3-dev python3-pip python3-venv
RUN apt-get install git curl python3-pip ffmpeg -y
ARG USER=root
USER $USER
RUN python3 -m venv venv

# clonning repo 
RUN git clone https://github.com/harshjais369/ProfessorBot.git /root/userbot

# working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

EXPOSE 8080
RUN chmod +x /app/start.sh
ENTRYPOINT ["./start.sh"]
