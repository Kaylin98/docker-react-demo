# 🐳 Docker React Demo 🚀

Welcome to the **Docker React Demo**!  
This is my playground for learning how to containerize a React app with Docker, sprinkle in some CI/CD magic, and launch it into the AWS stratosphere ☁️🚀

---

## 🔧 Local Setup (a.k.a. Tinkering Time)

### 1. Clone the Repo Like a Pro

```bash
git clone https://github.com/Kaylin98/docker-react-demo.git
cd docker-react-demo
```

### 2. Install the Essentials

```bash
npm install
```

Make sure Node.js is installed or your terminal will give you the stink-eye 👀.

### 3. Start the Magic

```bash
npm start
```

Then head over to [http://localhost:3000](http://localhost:3000) and bask in the glory of your running app.

---

## 🐳 Docker Deployment: Because "It works on my machine" isn’t good enough

### 🧪 Dev Mode (Live Reloading = Instant Gratification)

```bash
docker-compose -f docker-compose-dev.yml up
```

### 🚀 Production Mode (aka “The Boss Mode”)

```bash
docker-compose up --build -d
```

Docker will build the image using the `Dockerfile` and run it like a champ.

### Manual (Advanced Nerd Level 💻)

#### Build Dev Image

```bash
docker build -f Dockerfile.dev -t docker-react-demo-dev .
```

#### Run Dev Container

```bash
docker run -p 3000:3000 docker-react-demo-dev
```

#### Build Production Image

```bash
docker build -t docker-react-demo-prod .
```

#### Run Production Container

```bash
docker run -p 80:80 docker-react-demo-prod
```

---

## 🌎 Hosting on AWS (aka “Launching it into the Cloud” ☁️)

Yes, it’s live! The app is hosted using:

- 🪣 **S3 Bucket** to store deployment zips  
- 🌿 **Elastic Beanstalk** environment (`Docker-React-Demo-env`)  
- 🤖 **CI/CD via GitHub Actions** to deploy like a DevOps wizard

Every push to `master` builds, tests, zips, and flings your code into the cloud like it’s 2099.

---

## ⚙️ CI/CD with GitHub Actions (Deploy While You Sleep 😴)

A breakdown of the pipeline:

- ✅ Logs into Docker Hub  
- 🔨 Builds with `Dockerfile.dev`  
- 🧪 Runs tests  
- 📦 Zips the project  
- ☁️ Deploys to AWS Elastic Beanstalk via S3

Check out the magic inside `.github/workflows/deploy.yml` – it’s like sorcery but written in YAML.

---

## 📦 `.dockerignore` (Because Nobody Wants a Bloated Image)

Files excluded from Docker builds to keep things slim and sassy:

```
package-lock.json
node_modules
yarn.lock
```

---

---

## ⚠️ AWS Free Tier Warning (aka "Don't Get Surprised by a Bill 💸")

Heads-up! If you're using AWS's free tier (like I was), be sure to **delete your Elastic Beanstalk environment and S3 bucket** after you're done deploying.  
Leaving them running might result in actual charges — and your wallet will not thank you.

### 🧹 How to Clean Up

- Terminate the Elastic Beanstalk environment from the AWS Console.
- Delete the S3 bucket used for deployment packages.
- Optionally, revoke IAM credentials you no longer need.


## 📜 License

MIT – because sharing is caring.  
See [LICENSE](LICENSE) for details.
