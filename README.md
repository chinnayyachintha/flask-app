
# **Simple Flask Application**

This is a basic Flask application structured for easy local development and Docker deployment.

---

## **🛠️ Installation**

1. **Clone the repository**  

   ```bash
   git clone https://github.com/your-username/flask-app.git
   cd flask-app
   ```

2. **Create a virtual environment**  

   ```bash
   python3 -m venv venv
   ```

3. **Activate the environment:**  
   - On **Windows**:  

     ```bash
     .\venv\Scripts\activate
     ```

   - On **Unix/MacOS**:  

     ```bash
     source venv/bin/activate
     ```

4. **Install dependencies:**  

   ```bash
   pip install -r requirements.txt
   ```

5. **Run the application:**  

   ```bash
   python run.py
   ```

---

## **🌐 Usage**

Visit [http://localhost:5000](http://localhost:5000) in your browser.

---

## **🐳 Docker Support**

### **Build and Run with Docker**

1. **Build the Docker image:**  

   ```bash
   docker build -t flask-app .
   ```

2. **Run the Docker container:**  

   ```bash
   docker run -d -p 5000:5000 flask-app
   ```

3. **Access the application:**  
   Visit [http://localhost:5000](http://localhost:5000) in your browser.

---

### **📦 Stop and Remove the Container**

To **stop** the running container:

```bash
docker ps          # Find the container ID
docker stop <container_id>
```

To **remove** the container:

```bash
docker rm <container_id>
```

---

## **🔍 Docker Commands Reference**

- **View running containers:**  

  ```bash
  docker ps
  ```

- **View all containers (including stopped):**  

  ```bash
  docker ps -a
  ```

- **View Docker images:**  

  ```bash
  docker images
  ```

- **Remove Docker image:**  

  ```bash
  docker rmi flask-app
  ```
