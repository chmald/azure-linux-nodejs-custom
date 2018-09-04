FROM appsvc/node:10.1.0_1808101741

COPY . /opt/app
RUN cd /opt/app \
    && npm install \
    && chmod 755 /opt/app/init_container.sh

ENTRYPOINT [ "/opt/app/init_container.sh" ]