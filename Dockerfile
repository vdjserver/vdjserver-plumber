FROM rstudio/plumber

LABEL maintainer="VDJServer"

RUN R -e "install.packages('airr')"
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('viridis')"

# Copy project source
RUN mkdir /vdjserver-plumber
COPY . /vdjserver-plumber

CMD ["/vdjserver-plumber/app/plumber.R"]
