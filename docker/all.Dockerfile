FROM nginx:alpine
LABEL build_date="2020-09-30" \
	  author="Brian Alberg <alberg@imada.sdu.dk>" \
	  description="Jolie Documentation" \
	  url="https://jolie-lang.org"
MAINTAINER Brian Alberg "alberg@imada.sdu.dk"
## Fix issue in Node/Docker as reported here:
## https://stackoverflow.com/questions/52196518/could-not-get-uid-gid-when-building-node-docker
ENV npm_config_unsafe_perm true
WORKDIR /home
RUN mkdir -p /home/nginx/docs
RUN apk update && \
    apk add git && \
    apk add nodejs npm --no-cache
RUN npm update
RUN npm install -g gitbook-cli
RUN npm install mv
RUN npm install gitbook-plugin-highlight-jolie
RUN npm install gitbook-plugin-theme-jolie
RUN npm install gitbook-plugin-logo
RUN npm install gitbook-plugin-collapsible-chapters
RUN git clone https://github.com/jolie/docs.git
WORKDIR /home/docs/docker
RUN pwd
RUN ls
RUN cp -r -v /home/docs/docker/overrides/* /
WORKDIR /home/docs

RUN for version in $(git for-each-ref --shell --format='%(refname:lstrip=3)' | grep 'v[0-9]*\.[0-9]*\.x' | tr -d "'"); \
    do \
        echo "Copying version ${version}"; \
        git checkout ${version}; \
        cp -r gitbook/* web; \
        cd web; \
        cp logo.png /usr/share/nginx/html; \
        gitbook init && \
        gitbook install && \
        gitbook build; \
        ## Copy static webserver
        mkdir -p /usr/share/nginx/html/${version}; \
        chown -R nginx:nginx _book;\
        cp -r -v _book/* /usr/share/nginx/html/${version}; \
        ## Copy assets
        cp -r -v .gitbook/* /usr/share/nginx/html/${version}; \
        cd ..; \
        git stash; \
    done
## Copy nginx config file
RUN git checkout master
COPY docker/versions.json /usr/share/nginx/html
COPY docker/index.html /usr/share/nginx/html
RUN cp -r docker/nginx/conf.d /etc/nginx
WORKDIR /
EXPOSE 8080
