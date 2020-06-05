FROM r-base:4.0.0

RUN apt-get update && apt-get dist-upgrade -y && apt-get autoremove -y \
&& apt-get install libssl-dev libxml2-dev libcurl4-openssl-dev git -y \
&& R -e "install.packages('devtools')" \
&& R -e "devtools::install_github('rlebron-bioinfo/gnlearn')"

CMD ["R"]
