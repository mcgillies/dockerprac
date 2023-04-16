FROM --platform=linux/amd64 rocker/rstudio:4.1.3
WORKDIR /home/joyvan/dockerprac
COPY . /home/joyvan/dockerprac/

RUN Rscript -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_version("cowplot", "1.1.1")'
