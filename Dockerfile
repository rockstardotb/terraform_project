From python

RUN pip install --upgrade pip
RUN pip install pytest


RUN apt-get update && apt-get install -y \
                gcc \
                gettext \
                postgresql-client libpq-dev \
		sudo \
                unzip \
                vim \
        --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip

RUN unzip terraform_0.11.8_linux_amd64.zip
RUN export PATH="$PATH:/terraform"
RUN cd /bin && ln -s /terraform

ADD . / /app/

WORKDIR /app

RUN terraform init

EXPOSE 8000
