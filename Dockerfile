FROM chosenken/jdk-8
MAINTAINER chosenken@gmail.com
ENTRYPOINT ["gvm-exec"]

RUN curl -s get.gvmtool.net | bash
RUN ln -s /root/.gvm /.gvm
ADD gvm.config /.gvm/etc/config
ADD bin/ usr/local/bin
