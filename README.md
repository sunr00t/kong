![Postgres](https://img.shields.io/badge/Docker-%23316192.svg?style=for-the-badge&logo=docker&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

<div align="center">
    <img src="https://konghq.com/wp-content/uploads/2018/08/thumbnail-logo-color-full.svg" alt="Logo" width="320" height="132">
  <p align="center">
    Managing microservices and APIs with Kong and Konga
    <br />
    <br />
</div>

## Getting Started


### Prerequisites

* Docker is required to run this project (If you want to install with ```docker-install.sh``` automation script)

  ```sh
  chmod +777 ./docker-install.sh
  chmox +x ./docker-install.sh
  sudo ./docker-install.sh
  ```

### Running

1. Execute Docker Compose
   ```sh
   docker compose up
   ```
2. Enter your database instance and create 02 databases for Kong and Konga.
  
3. Await kong-migrations finish the creating tables and running the project again
  ```sh
  docker compose up
  ```


