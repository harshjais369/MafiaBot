FROM harshjais369/professorbot:main

# clonning repo 
RUN git clone https://github.com/harshjais369/MafiaBot.git /root/prfbot

RUN pip install --upgrade pip

# working directory 
WORKDIR /root/prfbot

# Install requirements
RUN pip3 install -U -r requirements.txt

#ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash","professorbot"]
