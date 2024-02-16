# Personal Portfolio Website

This is a static website built with Vue.js and Gridsome. It serves as a personal portfolio to showcase my work.

## Technologies Used

- Vue.js
- Gridsome
- Docker
- GitHub Actions
- Cloudflare Pages

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Docker and docker-compose installed on your local system.

### Installation and Setup

1. Clone the repository
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    ```

2. Navigate to the project directory
    ```bash
    cd your-repo-name
    ```

3. Run Docker Compose to build and start the application
    ```bash
    docker-compose up
    ```

4. Access the website locally in your browser at `localhost:8082`

## Deployment

This project is deployed using Cloudflare Pages via GitHub Actions. Whenever changes are pushed to the `main` branch of the GitHub repository, GitHub Actions automatically builds the project and deploys the contents of the `dist` directory to Cloudflare Pages.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any bugs, feature requests, or suggestions.

## Acknowledgments

- This project is a fork of [dev-adewale/portfolio](https://github.com/dev-adewale/portfolio)