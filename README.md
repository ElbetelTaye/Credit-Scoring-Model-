# Data Preprocessing, Exploratory Data Analysis (EDA), Feature Engineering Notebooks, and ML Model training

## Overview

This project focuses on developing a Credit Scoring Model for a buy-now-pay-later service in partnership with an eCommerce company. The dataset contains transaction records, and the aim is to analyze the data and engineer relevant features that will help in predicting credit risk.

## Prerequisites

- Python 3.x
- Jupyter Notebook or JupyterLab
- Required Python libraries (see below)

## Setup

To set up the environment for this notebook, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ElbetelTaye/Credit-Scoring-Model-.git
   ```

2. **Install Required Libraries:**

   Make sure to install the required libraries by running:
   ```bash
   pip install -r requirements.txt
   ```

3. **Start Jupyter Notebook:**

   Launch the Jupyter Notebook:
   ```bash
   jupyter notebook
   ```

   Open `scripts/data_preprocessing.ipynb` or `notebook/EDA.ipynb` from the Jupyter interface.

## Usage
## Data Preprocessing
- Notebook: data_preprocessing.ipynb
- Purpose: Clean and prepare the data for analysis and modeling.
#### Processes Included: 

1. **Load Data**: Import data from CSV or other file formats.
2. **Display Basic Information**: Use `info()` to display data types, non-null counts, and memory usage.
3. **Display the First Few Rows**: Use `head()` to inspect the first few records.
4. **Display Column Names**: Confirm column names with `columns` to ensure the data is loaded correctly.
5. **Check for Missing Values**: Identify missing values using `isnull().sum()`.
6. **Drop Duplicate Rows**: Remove duplicate rows, if any, using `drop_duplicates()`.
7. **Convert `transactionstarttime` to Datetime**: Parse `transactionstarttime` into a datetime format for time-based analysis.
8. **Handle Missing Values from Invalid Datetime Conversion**: Address any missing values that may arise during datetime conversion.
9. **Visualize the Cleaned Data**:print out the data.
10. **Save the Cleaned Data**: Export the cleaned dataset for further analysis or model training.

### Exploratory Data Analysis (EDA)

- **Notebook**: `EDA.ipynb`
- **Purpose**: Gain insights into the data's structure, distributions, and relationships between variables to guide modeling decisions.
- **Processes Included**:
  - Summary statistics of numerical columns.
  - Distribution analysis using histograms and box plots.
  - Correlation analysis using heatmaps.
  - Analysis of categorical variables with count plots and bar charts.
  - Insights into time-series data trends if applicable.
  - Identification of outliers and their impact on the dataset.

#### Feature_Engineering

This notebook focuses on feature engineering to enhance the dataset for modeling. Key tasks include:
- **Aggregate Features**: Creating new features such as total transaction amount, average transaction amount, transaction count, and standard deviation of transaction amounts for each customer.
- **Time-Based Features**: Extracting features from the transaction timestamp (hour, day, month, year).
- **Encoding Categorical Variables**: Applying Weight of Evidence (WOE) transformation to categorical features for better model interpretability.
- **Handling Missing Values**: Implementing strategies for filling or removing missing values in the dataset.
- **Normalization/Standardization**: Scaling numerical features to ensure they are on a similar scale, improving model performance.
#### Default_Estimator_and_WOE_Binning

This notebook focuses on feature engineering using the RFMS (Recency, Frequency, Monetary, Seniority) formalism and applying Weight of Evidence (WoE) binning for customer risk classification. The main steps include:
 - **RFMS Feature Engineering**: Calculating Recency, Frequency, Monetary, and Seniority features from the transaction data.
 - **Risk Label Assignment**: Classifying customers as 'good' or 'bad' based on their RFMS score.
 - **WoE Binning**: Transforming RFMS features using WoE based on the RiskLabel.
 - **Information Value (IV) Calculation**: Evaluating the importance of each RFMS feature using IV to assess predictive power.

#### Model Training

This notebook trains the machine learning models:
 - **Model Selection**: Random Forest and Gradient Boosting Machines.
 - **Data Splitting**: Dividing data into training and testing sets.
 - **Model Training**: Fitting the models to training data.
 - **Hyperparameter Tuning**: Optimizing models using Grid and Random Search.
 - **Overfitting Prevention**: Using cross-validation and regularization techniques.
 - **Model Evaluation**: Assessing metrics like Accuracy, Precision, Recall, F1 Score, and ROC-AUC.

## File Structure

The repository is structured as follows:

```
├── .vscode/
│   └── settings.json
├── .github/
│   └── workflows/
│       └── unittests.yml
├──app
│   ├── main.py
│   └── requirements.txt
├── notebooks/
│   ├── __init__.py
│   ├── EDA.ipynb
│   ├── Feature_Engineering.ipynb
│   ├── Modelling.ipynb
│   └── Default_Estimator_and_WOE_Binning.ipynb
├── scripts/
│    ├── __init__.py
│    ├── data_cleaning.ipynb
├── src/
│   └── __init__.py
├── tests/
│   └── __init__.py
├── Dockerfile
├──.dockerignore
├──.gitignore
├── README.md
└── requirements.txt


```

## Contributing

If you would like to contribute to this project:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.