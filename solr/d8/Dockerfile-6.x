FROM solr:6-alpine

RUN wget https://ftp.drupal.org/files/projects/search_api_solr-8.x-2.1.zip \
  && unzip search_api_solr-8.x-2.1.zip \
  && rm search_api_solr-8.x-2.1.zip

RUN /opt/docker-solr/scripts/precreate-core lfdrupal
RUN cp -R search_api_solr/solr-conf/6.x/* /opt/solr/server/solr/mycores/lfdrupal/conf


