FROM python:3.8.3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV HOME=/home/parfumadmin
ENV APP_HOME=/home/parfumadmin/Magazin_site

WORKDIR $APP_HOME

RUN apt-get update && apt-get upgrade -y && apt-get -y install postgresql gcc python3-dev musl-dev netcat

RUN pip install --upgrade pip

## create the app user
RUN groupadd parfumeria
RUN useradd -m -g parfumeria parfumadmin
RUN usermod -aG parfumeria parfumadmin

WORKDIR $HOME

ADD install_requirements.py .

ADD entrypoint.sh $HOME

ADD start.sh $HOME

RUN mkdir $HOME/staticfiles
RUN mkdir $HOME/media

RUN chown -R parfumadmin:parfumeria $HOME

RUN chmod +x $HOME/start.sh

#add python path directory. Allows to use libs from pip
ENV PATH=${PATH}:$HOME/.local/bin

USER parfumadmin

ENTRYPOINT ["/home/parfumadmin/entrypoint.sh"]
