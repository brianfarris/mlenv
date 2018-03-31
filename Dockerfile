FROM bfarris/base:v1

RUN pip install jupyterlab

COPY requirements/ /requirements/
COPY setup_virtualenv.sh /tmp/
RUN /bin/bash -c "/tmp/setup_virtualenv.sh ml"

ENV PIP_REQUIRE_VIRTUALENV true

WORKDIR /src

EXPOSE 8888

CMD /bin/bash -c "jupyter lab --ip=* --port=8888 --no-browser --allow-root"
