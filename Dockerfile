FROM r-base:4.0.0

RUN R -e "install.packages('devtools')" \
&& R -e "devtools::install_github('rlebron-bioinfo/gnlearn')" 

CMD ["R"]
