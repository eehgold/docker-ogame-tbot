FROM debian:11

RUN apt-get update -yq \
&& apt-get install unzip -y \
&& apt-get install wget -y \
&& apt-get clean -y

RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update -yq 
RUN apt-get install apt-transport-https -y
RUN apt-get install -y dotnet-runtime-5.0
RUN apt-get clean

RUN mkdir /app
ADD https://github.com/ogame-tbot/TBot/releases/download/v0.2.64/TBot-v0.2.64-linux64.zip /app/
RUN unzip /app/TBot-v0.2.64-linux64.zip -d /app
RUN chmod +x /app/publish/linux64/ogamed
RUN chmod +x /app/publish/linux64/TBot

CMD /app/publish/linux64/TBot