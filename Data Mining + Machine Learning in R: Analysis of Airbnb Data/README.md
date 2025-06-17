# NYC Airbnb Data Mining Project

## Main Goal + Project Statement
Analyze New York City’s Airbnb rental market to uncover actionable insights for hosts, guests, and property investors.  
This includes:
- Forecasting rental prices
- Understanding pricing categories
- Identifying factors influencing cancellation policies
- Comparing Brooklyn neighborhoods using clustering techniques

---

## Data Source & Preprocessing  
**Data Source:** [Inside Airbnb](http://insideairbnb.com/get-the-data.html)  

**Preprocessing:**
- Handled missing values and outliers  
- Computed summary statistics for continuous and categorical variables  
- Standardized key features (e.g., price, number of reviews)  
- Created new features such as price bins and host activity level  

---

## Analysis Methods  
- **Exploratory Data Analysis (EDA):**  
  - Pricing trends  
  - Accommodation types  
  - Host verification  
  - Neighborhood comparisons  
- **Predictive Modeling:**  
  - Multiple Linear Regression to forecast rental prices  
- **Classification:**  
  - Naive Bayes to categorize price ranges and predict cancellation policies  
- **Clustering:**  
  - K-Means clustering to segment Brooklyn neighborhoods  

---

## Tools Used  
- **R** (tidyverse, ggplot2, caret, rpart, factoextra, pROC, ggcorrplot, etc.)
- **RStudio** (IDE for coding, plotting, and analysis)  
- **RPubs** (to publish interactive reports and visualizations)

---

## Summary of Key Findings  
- Room type, neighborhood, and accommodation capacity are strong price predictors  
- Listings naturally fall into distinct pricing categories  
- Host identity verification and reviews correlate with cancellation policies  
- Brooklyn neighborhoods display clustering patterns useful for investment strategy  

---

[View Full Project Write-Up on RPubs](https://rpubs.com/tcool/DataMining_ML_Airbnb)
               
---
               
## Final Recommendations  
- **Hosts:** Adjust pricing based on accommodation capacity and borough-specific demand  
- **Guests:** Use identified pricing categories to find better value  
- **Investors:** Focus on Brooklyn clusters with favorable attributes  
- **Platform Designers:** Improve user filters around pricing and cancellation options  

---

## What I Learned  
- Hands-on experience with real-world, messy data  
- Improved modeling techniques across regression, classification, and clustering  
- Developed data storytelling skills through visuals and stakeholder framing  
- Gained practical experience in building end-to-end data projects
