FROM nginx

ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT

COPY media/ /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
