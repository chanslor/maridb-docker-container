FROM mariadb


# Define default command.
#CMD ["mysqld_safe"]
RUN /usr/bin/mysqld_safe --datadir="/var/lib/mysql" --socket="/var/lib/mysql/mysql.sock" --user=mysql  >/dev/null 2>&1 &

# Expose ports.
EXPOSE 3306

# docker build -t chanslor/mariadb .
# docker run -it -p 3306:3306 -e MYSQL_ROOT_PASSWORD=abc123 chanslor/mariadb
