From hashicorp/terraform
From python

RUN pip install --upgrade pip
RUN pip install pytest

RUN apt-get update && apt-get install -y \
                gcc \
                gettext \
                postgresql-client libpq-dev \
                vim \
        --no-install-recommends && rm -rf /var/lib/apt/lists/*

ADD . / /app/

WORKDIR /app

RUN chmod +x /app/awsKeys.sh
RUN /app/awsKeys.sh

EXPOSE 8000
