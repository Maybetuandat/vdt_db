FROM postgres:14

ENV POSTGRES_DB=student_management \
    POSTGRES_USER=postgres \
    POSTGRES_PASSWORD=123456

# Copy init script để PostgreSQL tự động chạy khi khởi động lần đầu
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432