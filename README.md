# My Portfolio
*This is a static website which serves as my personal porfolio.*
![Screenshot](screenshot/Portfolio%20Website.png)

## Technologies
 - [**Vue.js**](https://vuejs.org/)
 - [**Gridsome**](https://gridsome.org/)
 - [**Docker and Docker Compose**](https://www.docker.com/)
 - [**Github Actions**](https://github.com/features/actions)
 - [**AWS Elastic Compute Cloud**](https://aws.amazon.com/ec2/)

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
- Docker and docker-compose installed on your local system.

### Installation and Setup
1. Clone the repository
    ```
    git clone https://github.com/sharqX/portfolio.git
    ```
2. Navigate to the project directory
    ```
    cd portfolio
    ```
3. Run Docker Compose to build and start the application
    ```
    docker-compose up
    ```
4. Access the website locally in your browser at `localhost:8080`

## Deployment
This project is deployed with `Github Actions` which automatically builds the docker image and pushes it to `Docker Hub`. Then logs in to the `AWS EC2` instance and pulls the latest images and deploys it using `Docker Compose` whenever changes are pushed to the `main` branch.

## Acknowledgments
- This project is a fork of <ins>[jbhv12/portfolio.git](https://github.com/jbhv12/portfolio.git)</ins>