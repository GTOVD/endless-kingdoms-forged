FROM postgres:15

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=docker
ENV POSTGRES_PASSWORD=docker
ENV POSTGRES_DB=mydb

# Expose PostgreSQL port
EXPOSE 5432

# Automatically initialize a database
# The entrypoint script will create the database and user if they don't exist 