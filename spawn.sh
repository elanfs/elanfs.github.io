#/bin/sh

apt-get update && apt-get -y install wget build-essential libncurses5-dev libssl-dev git-core && \
wget http://www.erlang.org/download/otp_src_17.5.tar.gz && \
tar -zxvf otp_src_17.5.tar.gz && \
cd otp_src_17.5 && \
./configure --enable-dirty-schedulers && \
make && make install && cd .. && \
git clone https://github.com/ferd/erlang-history && cd erlang-history && make install && cd .. && \
rm -rf erlang-history && \
rm -rf otp_src_17.5 && \
rm -rf /var/lib/apt/lists/*
