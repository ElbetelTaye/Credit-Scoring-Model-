# Data Preprocessing Notebook

## Overview

This repository contains a Jupyter notebook, `scripts/data_preprocessing.ipynb`, designed for preprocessing data before using it for machine learning tasks. The notebook includes steps for data cleaning, transformation, and visualization to prepare the dataset for further analysis or model training.

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

   Open `scripts/data_preprocessing.ipynb` from the Jupyter interface.

## Usage

- Open the notebook `scripts/data_preprocessing.ipynb`.
- Update the file paths and configurations according to your dataset.
- Run each cell sequentially to preprocess the data.
- Modify the preprocessing steps as needed based on the dataset you are working with.

## Processes Included

The notebook performs the following data preprocessing steps:

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

## File Structure

```
.
|-- data/                     # Directory to store raw and processed data. It is included in gitignore
├── .vscode/
│   └── settings.json
├── .github/
│   └── workflows/
│       └── unittests.yml
├── .gitignore
├── requirements.txt
├── README.md
├── src/
│   └── __init__.py
├── notebooks/
│   ├── __init__.py
├── tests/
│   └── __init__.py
├── scripts/
    ├── __init__.py
    └── data_preprocessing.ipynb                       # The main notebook for data preprocessing

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