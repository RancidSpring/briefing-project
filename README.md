# Warehouse Operations Efficiency Analysis  

This project analyzes warehouse “picking” operations data to understand which factors influence the speed of operations and to identify natural clusters of tasks with similar characteristics.  
The goal is to propose fair performance standards, highlight inefficiencies, and suggest improvements in workflow, layout, and packaging.  

---


## Project Structure  

```
data/
  raw/         # Original input files
  interim/     # Cleaned/processed intermediate data
  processed/   # Feature-engineered datasets
notebooks/     # Jupyter notebooks for analysis
reports/       # Final report outputs (PDF, figures)
src/           # Helper functions and scripts
requirements.txt
README.md
```

## Setup

- The project requires **Python 3.13** (make sure you have it installed).  
- Dependencies are listed in `requirements.txt`.  
- Put the CSV data input in `data/raw/` before running the analysis.

```bash
#!/usr/bin/env bash
# setup.sh - Create Python 3.13 virtual environment and install dependencies

set -e  # exit on error

# 1. Create venv
python3.13 -m venv .venv

# 2. Activate venv
if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    source .venv/bin/activate
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    .venv\Scripts\activate
fi

# 3. Upgrade pip and install requirements
pip install --upgrade pip
pip install -r requirements.txt
```


## Usage  

Run Jupyter Lab or Notebook to explore the analysis:  


Main steps are:  
1. **Data cleaning** → handle missing values, detect outliers.  
2. **Feature engineering** → create meaningful attributes (workload, item physicality, location).  
3. **Clustering** → group similar operations to propose fair standards.  
4. **Visualization & reporting** → generate plots and final PDF.  

---

## Notes  

- Data files are anonymized but keep their original structure.  
- Plots are created with **Plotly**, so they are interactive inside Jupyter.  
- The analysis was designed to be reproducible: each step saves cleaned or processed data to `/data/interim` or `/data/processed`.  

---

## Deliverables  

- **Code:** all scripts and notebooks used in the analysis.  
- **Report (PDF):** explanation of data preparation, feature engineering, clustering, and recommendations.  
- **Visualizations:** key plots to support findings (interactive and static).  