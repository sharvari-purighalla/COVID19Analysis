# COVID-19 Mortality Analysis Using R

This project explores demographic factors associated with COVID-19 mortality using an early pandemic dataset. The analysis is performed in **R** and focuses on two main variables: **age** and **gender**, investigating whether they are statistically significant predictors of death due to COVID-19.

## Dataset

- **Source**: `COVID19_line_list_data.csv`
- **Fields Used**: `age`, `gender`, `death`

This dataset contains anonymized patient-level information collected during the early stages of the COVID-19 pandemic, including age, gender, and death status.

## Goals

1. **Clean and prepare the dataset** for analysis.
2. Investigate whether **age** is associated with higher COVID-19 mortality.
3. Test whether **gender** influences the probability of death.
4. Perform **statistical tests** to support or refute each claim.

## Data Cleaning

```r
data$death_dummy <- as.integer(data$death != 0)
```

A new binary variable death_dummy was created to easily compare death outcomes. 1 indicates the patient died; 0 indicates they survived.

## Key Findings
1. Age vs. Mortality
Claim: People who die from COVID-19 are generally older.

Test Used: Independent two-sample t-test

Result:

Mean age of deceased: mean(dead$age)

Mean age of survivors: mean(alive$age)

p-value < 0.001 ⇒ Statistically significant difference

Conclusion: Age is significantly correlated with COVID-19 mortality.

2. Gender vs. Mortality
Claim: Gender has no effect on death rate.

Test Used: Independent two-sample t-test

Result:

Male mortality rate: mean(men$death_dummy)

Female mortality rate: mean(female$death_dummy)

p-value ≈ 0.002

Conclusion: Gender does have a statistically significant effect on mortality. Males have a 0.8% to 8.8% higher chance of dying compared to females (99% confidence interval).

## R Packages Used
Hmisc for descriptive statistics

## Takeaways
This simple statistical analysis highlights how demographic data like age and gender can play a role in health outcomes during a pandemic. While the dataset is limited and potentially biased (due to reporting inconsistencies early in the pandemic), the results are consistent with global health findings.

## Future Improvements
Incorporate other features (e.g., comorbidities, country, hospitalization status)

Use logistic regression for multivariate analysis

Build a Shiny dashboard to visualize trends interactively

## How to Run
Clone the repository.

Make sure the dataset is located at the specified path or update the path in the R script.

Run the script in any R environment (e.g., RStudio).
r```source("covid_analysis.R")```

This project was created by Sharvari Purighalla. You may connect with me on linkedin @sharvari-purighalla for discussions, collaborations, or improvements!
Date: 04/16/2025
