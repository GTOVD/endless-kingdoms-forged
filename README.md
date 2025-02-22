# next-forge

**Production-grade Turborepo template for Next.js apps.**

<div>
  <img src="https://img.shields.io/npm/dy/next-forge" alt="" />
  <img src="https://img.shields.io/npm/v/next-forge" alt="" />
  <img src="https://img.shields.io/github/license/haydenbleasel/next-forge" alt="" />
</div>

[next-forge](https://github.com/haydenbleasel/next-forge) is a [Next.js](https://nextjs.org/) project boilerplate for modern web application. It is designed to be a comprehensive starting point for new apps, providing a solid, opinionated foundation with a minimal amount of configuration.

Clone the repo using:

```sh
npx next-forge@latest init
```

Then read the [docs](https://docs.next-forge.com) for more information.

<a href="https://github.com/haydenbleasel/next-forge/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=haydenbleasel/next-forge" />
</a>

Made with [contrib.rocks](https://contrib.rocks).

## Getting Started

...

### Running with Docker

To run the project with a Dockerized PostgreSQL database, follow these steps:

1.  **Create a Dockerfile:**  (If you haven't already) Create a `Dockerfile` in the root of your project with the following content:
    ```dockerfile
    FROM postgres:15

    # Set environment variables for PostgreSQL
    ENV POSTGRES_USER=docker
    ENV POSTGRES_PASSWORD=docker
    ENV POSTGRES_DB=mydb

    # Expose PostgreSQL port
    EXPOSE 5432
    ```

2.  **Update .env:** Ensure your `.env` file in `packages/database/.env` has the correct `DATABASE_URL` to connect to the Dockerized PostgreSQL database:
    ```
    DATABASE_URL="postgresql://docker:docker@localhost:5432/mydb?schema=public"
    ```

3.  **Build and run Docker Compose (optional but recommended):**  For easier management, you can use Docker Compose. Create a `docker-compose.yml` file in the root of your project:

    ```yaml
    version: '3.8'
    services:
      db:
        build: .  # Builds from the Dockerfile in the current directory
        ports:
          - "5432:5432"
        environment:
          POSTGRES_USER: docker
          POSTGRES_PASSWORD: docker
          POSTGRES_DB: mydb
    ```

    Then, start the database using:

    ```bash
    docker-compose up -d
    ```

    This command will build the Docker image (if it's the first time) and start the PostgreSQL container in detached mode (running in the background).  You can stop the container later using `docker-compose down`.

4.  **Run your application:** With the database running in Docker, you can now run your application as usual (e.g., `npm run dev` in your `apps/app` directory).  Make sure your application is configured to use the `DATABASE_URL` from the `.env` file.

### Without Docker

...
