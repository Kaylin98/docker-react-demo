
# Docker React Demo 🚀

Welcome to the **Docker React Demo**! This project is my playground for learning how to containerize a simple React app using Docker, and eventually hosting it on AWS. Feel free to follow along and explore as I dive into the world of Docker and cloud hosting! 🌍✨

## 🔧 Setup

Get the project up and running locally with these easy steps:

### 1. Clone the repository

First, clone the repo to your local machine:

```
git clone https://github.com/Kaylin98/docker-react-demo.git
cd docker-react-demo
```

### 2. Install dependencies

Make sure you have [Node.js](https://nodejs.org/) installed, and then run:

```
npm install
```

This will install all the necessary dependencies.

### 3. Run the app

Start the app with:

```
npm start
```

Visit [http://localhost:3000](http://localhost:3000) in your browser to see the app in action! 🚀

## 🐳 Docker Deployment

Ready to take it to the next level? Here’s how you can build and run the app in a Docker container:

### 1. Build the Docker image

Build the Docker image by running:

```
docker build -t docker-react-demo .
```

### 2. Run the Docker container

Once the image is built, run it in a container with:

```
docker run -p 3000:3000 docker-react-demo
```

Visit [http://localhost:3000](http://localhost:3000) again to see the app running inside a container. Docker magic! ✨

## 🌎 Future Plans: Hosting on AWS

Next step? I’m planning to deploy this app to **AWS** to get a taste of cloud hosting. Stay tuned as I learn how to scale this app in the cloud and automate deployments!

## 📜 License

This project is licensed under the MIT License - check out the [LICENSE](LICENSE) file for more details.

---
