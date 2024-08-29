FROM rstudio/plumber

LABEL MAINTAINER="VDJServer <vdjserver@utsouthwestern.edu>"

RUN R -e "install.packages('airr')"
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('viridis')"

# Copy project source
RUN mkdir /vdjserver-plumber
COPY . /vdjserver-plumber

CMD ["/vdjserver-plumber/app/plumber.R"]
