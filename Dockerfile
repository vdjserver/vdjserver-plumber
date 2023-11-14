FROM rstudio/plumber

LABEL maintainer="VDJServer"

RUN R -e "install.packages('airr')"

# Copy project source
RUN mkdir /vdjserver-plumber
COPY . /vdjserver-plumber

CMD ["/vdjserver-plumber/app/plumber.R"]
