# Docker React Demo 🚀

Welcome to the **Docker React Demo**! This project is my playground for learning how to containerize a simple React app using Docker, and eventually hosting it on AWS. Feel free to follow along and explore as I dive into the world of Docker and cloud hosting! 🌍✨

---

## 🔧 Setup

Get the project up and running locally with these easy steps:

### 1. Clone the repository

First, clone the repo to your local machine:

```bash
git clone https://github.com/Kaylin98/docker-react-demo.git
cd docker-react-demo
```

### 2. Install dependencies

Make sure you have [Node.js](https://nodejs.org/) installed, and then run:

```bash
npm install
```

This will install all the necessary dependencies.

### 3. Run the app

Start the app with:

```bash
npm start
```

Visit [http://localhost:3000](http://localhost:3000) in your browser to see the app in action! 🚀

---

## 🐳 Docker Deployment

This project includes both development and production Docker setups.

### 🧪 Development

Use the following steps to run the app in a development container with live reloading:

#### 1. Build the image

```bash
docker build -f Dockerfile.dev -t docker-react-demo-dev .
```

#### 2. Run the container

```bash
docker run -p 3000:3000 docker-react-demo-dev
```

You can now access the app at [http://localhost:3000](http://localhost:3000).

---

### 🚀 Production

Build an optimized, production-ready container using multi-stage builds:

#### 1. Build the production image

```bash
docker build -t docker-react-demo-prod .
```

#### 2. Run the production container

```bash
docker run -p 80:80 docker-react-demo-prod
```

The app will be served by Nginx at [http://localhost](http://localhost).

---

## 🌎 Future Plans: Hosting on AWS

Next step? I’m planning to deploy this app to **AWS** to get a taste of cloud hosting. Stay tuned as I learn how to scale this app in the cloud and automate deployments!

---

## 📜 License

This project is licensed under the MIT License - check out the [LICENSE](LICENSE) file for more details.
