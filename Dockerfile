FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/index/html/*
COPY  index.html /usr/share/index/html/*
ENV kishore="test12" \
    manati="test234"
CMD ["nginx", "-g", "daemon off;"]