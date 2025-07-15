# FailSafe: MLOps Predictive Maintenance Application  
### Docker | AWS | Flask | CI/CD | Scikit-learn



---

## 1. Introduction

FailSafe is a comprehensive real-world machine learning project that brings together industry-standard practices in software engineering and artificial intelligence. This predictive maintenance system is designed with a fully modular and production-ready architecture that emphasizes maintainability, scalability, and deployment efficiency.

This project highlights the importance of moving beyond local experimentation in notebooks to full-fledged, real-world pipelines. With modular programming and structured workflows, each component of the machine learning lifecycle is independently testable, upgradable, and deployable.

In this documentation, I walk through every phase of building a predictive maintenance application — from setting up the development environment to designing and deploying a containerized, web-based ML system.

---

## 2. Project Setup

### Version Control
All code and documentation are maintained in a GitHub repository, ensuring transparency and collaboration throughout the lifecycle.

### Python Environment
A virtual environment was created using `virtualenv` to manage dependencies. The `requirements.txt` file ensures consistent environments across development and deployment.

---

## 3. Project Infrastructure

### Modular Architecture
The project is divided into modules: data ingestion, transformation, training, prediction, and the web application interface. This approach improves code organization, testability, and reuse.

### Exception Handling & Logging
- **Exception Handling**: Custom exceptions are handled through the `exception.py` module, preventing the application from crashing and improving debugging.
- **Logging**: Logging is implemented via `logger.py` to monitor activity and errors, which is crucial in both development and production environments.

---

## 4. Data Analysis and Modeling

### Exploratory Data Analysis
Data preprocessing included null-value treatment and outlier detection. Feature engineering added new meaningful variables that strengthened the model’s predictive power.

### Model Training
Multiple models were trained and evaluated:
- Logistic Regression
- Random Forest
- Gradient Boosting
- Support Vector Machines
- K-Nearest Neighbors

Hyperparameter tuning was done using GridSearchCV. The best model was chosen based on accuracy, precision, recall, and F1-score.

The final model and preprocessing objects were serialized for deployment.

---

## 5. Data Handling Modules

### Data Ingestion
The `DataIngestion` module loads and splits data into training and testing sets, with all paths and configurations managed through Python dataclasses.

### Data Transformation
Using Scikit-learn's `Pipeline` and `ColumnTransformer`, preprocessing was applied uniformly. Numerical features were scaled, and categorical features were one-hot encoded. These objects were saved for later use in inference.

### Model Trainer
The training pipeline evaluates several classifiers and saves the best one. Logging is embedded throughout the training lifecycle to trace every step of the process.

---

## 6. Prediction Pipeline

### Prediction Logic
The `Pred_Pipeline` class handles:
- Loading the serialized model and transformer
- Accepting user input through a Flask interface
- Returning real-time prediction results with interpretive messaging

### Input Formatter
The `input_data` class structures raw input data into the format expected by the trained pipeline.

---

## 7. Web Application Development

### Flask Integration
The web application is built using Flask. Key routes:
- `/`: Home route displaying the welcome page
- `/predictdata`: Accepts user input and returns prediction results

### Frontend Design
HTML templates (`index.html`, `home.html`) were designed for clarity and usability. CSS was applied to enhance visual presentation and responsiveness.

---

## 8. CI/CD and Deployment

### Docker Containerization
The application was containerized using Docker, making it easy to deploy on any platform with consistent behavior.

### AWS Integration
Although full AWS deployment has not yet been completed, the project is structured for seamless integration with:
- Amazon EC2: To host the application
- Amazon ECR: For Docker image storage
- IAM roles: For secure access control

### GitHub Actions (CI/CD)
CI/CD pipeline is prepared using GitHub Actions. The pipeline can be triggered on push events to automatically build, test, and deploy the application using Docker.

---

## 9. Conclusion

FailSafe is more than just a predictive model; it's a demonstration of how to operationalize data science. From preprocessing to real-time inference, every stage reflects best practices in MLOps.

With modular design, clean logging, containerization, and deployability in mind, this project reflects a scalable and production-ready machine learning system. It has taught me the importance of engineering discipline in AI, and how deployment strategies are just as important as model accuracy.

> Created and maintained by **Irfan Rahman**

---

*Note: This project is still in progress for AWS deployment. Future updates will include monitoring, alerting, and cloud scalability.*
