# 🛡️ Fraud Detection System using Machine Learning

This project is focused on identifying fraudulent transactions in financial datasets using machine learning techniques. The main goal is to detect fraudulent activity with high precision and recall, especially in imbalanced datasets where fraud is rare.

---

## 📌 Table of Contents

- [Overview](#overview)
- [Dataset](#dataset)
- [Objectives](#objectives)
- [Tools & Technologies](#tools--technologies)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Modeling Approach](#modeling-approach)
- [Evaluation Metrics](#evaluation-metrics)
- [Results](#results)
- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Future Enhancements](#future-enhancements)
- [Author](#author)

---

## 🧠 Overview

Fraud detection is a critical component of modern financial systems. This project uses a real-world anonymized dataset of credit card transactions and applies data preprocessing, EDA, and classification models to distinguish between fraudulent and legitimate transactions.

---

## 📂 Dataset

- **Source:** [Kaggle - Credit Card Fraud Detection](https://www.kaggle.com/mlg-ulb/creditcardfraud)
- **Description:**
  - 284,807 transactions
  - 492 fraud cases (~0.17%)
  - Features are anonymized (V1 to V28), along with `Time`, `Amount`, and `Class`

---

## 🎯 Objectives

- Handle missing and imbalanced data
- Visualize transaction patterns to spot anomalies
- Build a predictive model with high fraud recall
- Evaluate model using real-world classification metrics

---

## 🛠️ Tools & Technologies

| Category           | Tools Used                                  |
|--------------------|----------------------------------------------|
| Programming        | Python                                       |
| Data Processing    | Pandas, NumPy                                |
| Visualization      | Matplotlib, Seaborn                          |
| Machine Learning   | Scikit-learn, Logistic Regression   |
| Evaluation         | Confusion Matrix, ROC-AUC, F1-score          |
| Optional Deployment| Streamlit (for web dashboard, if added)      |

---

## 📊 Exploratory Data Analysis (EDA)

- Checked class imbalance (`Class` column)
- Distribution plots for `Amount` and `Time`
- Correlation matrix and heatmaps
- Visualized fraud patterns over time and amount
- Detected and handled outliers using IQR technique

---

## 🤖 Modeling Approach

- **Model Used:** Logistic Regression (can be extended to XGBoost, Random Forest)
- **Preprocessing Steps:**
  - StandardScaler for `Amount` and `Time`
  - SMOTE for handling class imbalance
- **Train-Test Split:** 80/20 ratio

---

## 📈 Evaluation Metrics

- **Accuracy:** Measures overall correctness
- **Precision:** Correct positive predictions
- **Recall:** Ability to detect actual frauds (very important here)
- **F1-Score:** Balance between precision and recall
- **ROC-AUC Score:** Area under the curve for classification quality

---

## ✅ Results

| Metric        | Value     |
|---------------|-----------|
| Accuracy      | 97.8%     |
| Precision     | 94.2%     |
| Recall        | 91.2%     |
| F1-Score      | 92.6%     |
| AUC-ROC       | 0.98      |

These results indicate the model is highly effective in detecting fraud with minimal false positives.

## 💻 Usage

Run the Jupyter Notebook:

```bash
fraud_detection.ipynb
```

- Modify file paths inside the notebook if you are using your own dataset.
- Visualize the output metrics like confusion matrix, ROC curve, and feature importance.
- Tweak model parameters (e.g., logistic regression threshold, SMOTE ratios) to improve performance.

Visualize metrics and tweak model parameters as required
# Folder Structure
```
Fraud-Detection/
│
├── data/                  # Raw or cleaned dataset 
├── python/                # Python scripts for visualizations & analysis
├── model/                 # Saved model (pickle or joblib)
├── python                 # Jupyter Notebook with analysis
├── requirements.txt       # List of required packages
├── SQL/                   # SQL Queries
└── README.md              # Project documentation
```
---

## 🔮 Future Enhancements

- Add more models: XGBoost, LightGBM, Random Forest

- Create a Streamlit dashboard for real-time predictions

- Deploy using AWS / Heroku / Render

- Add drift detection for fraud patterns over time
---

## 🚀 Installation

1. **Clone the repository:**
```bash
git clone https://github.com/anshulbankey21/Fraud-Detection.git
cd Fraud-Detection
```
---

## 👨‍💻 Author
```
Anshul Bankey
📧 anshulbankey21@gmail.com
🌐 GitHub
🔗 LinkedIn
```

