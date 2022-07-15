FROM mysql:8.0

ENV MYSQL_DATABASE test
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_USER testuser
ENV MYSQL_PASSWORD testpassword
ENV TZ=Asia/Tokyo

COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# docker build -t mysql ./
# docker run --name mysql -d -v `pwd`/data:/var/lib/mysql -p 3306:3306 mysql
# docker exec -it mysql mysql -u root -proot test