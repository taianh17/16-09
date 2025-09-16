# Dockerfile - phục vụ web tĩnh bằng Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Xoá file index mặc định của nginx (nếu có)
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ nội dung repo vào thư mục serve
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
