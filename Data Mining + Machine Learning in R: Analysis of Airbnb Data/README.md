# NYC Airbnb Data Mining Project
New York City’s Airbnb market is one of the most active and varied short-term rental ecosystems in the world - shaped by neighborhood trends, pricing dynamics, and host behaviors. This data mining project explores that complexity using predictive modeling, classification, clustering, and visualization to uncover patterns that can guide hosts, guests, investors, and policymakers.

The analysis leverages real-world Airbnb data to uncover drivers of rental price variation, reveal booking behavior trends, and compare neighborhoods across the city – especially within Brooklyn. Through a mix of data wrangling, machine learning, and statistical analysis in R, this project delivers actionable insights and highlights opportunities for smarter, data-informed decision-making in the short-term rental space.

**Data Source:** [Inside Airbnb](http://insideairbnb.com/get-the-data.html)  

---

## Main Goal + Project Statement
Analyze New York City’s Airbnb rental market to uncover actionable insights for hosts, guests, and property investors.  
This includes:
- Forecasting rental prices
- Understanding pricing categories
- Identifying factors influencing cancellation policies
- Comparing Brooklyn neighborhoods using clustering techniques

---

## Key Tools & Techniques
- **R** (tidyverse, ggplot2, caret, rpart, factoextra, pROC, ggcorrplot, e1071, etc.)
- **RStudio** (IDE for coding, plotting, and analysis)  
- **RPubs** (to publish interactive reports and visualizations)
- **Techniques**:
  - Data Cleaning & Preprocessing
  - Feature Engineering
  - Exploratory Data Analysis (EDA)
  - Supervised Learning (Multiple Linear Regression & Classification)
  - Unsupervised Learning (Clustering)
 
---

## Business Questions Addressed
1. What features drive Airbnb listing prices in NYC?  
2. Can we predict if a listing includes a cleaning fee?  
3. Can we classify Airbnb rentals into price tiers?  
4. Can we predict cancellation policies based on listing features?  
5. How can we group Brooklyn neighborhoods based on listing characteristics?  

---

## Data Preparation & Exploration

### a. Data Cleaning & Preprocessing
- Focused on NYC listings by filtering the full dataset to entries specific to New York City.
- Addressed missing values by:
  - Quantifying the extent of NAs across variables.
  - Imputing numeric features (e.g., bathrooms, beds, review_scores_rating) using the median.
  - Dropping incomplete or unrealistic observations (e.g., zero bedrooms, zero reviews).
- Converted percentage fields to decimals (e.g., host_response_rate).
- Standardized categorical values and validated zip codes.
- Removed noisy levels and consolidated rare cancellation policies.

### Feature Engineering
- Mapped NYC zip codes to boroughs using an external dataset.
- Created `amenities_count` by parsing the amenities list.
- Created `property_group` to reduce dimensionality.

### b. Summary Statistics & Correlation Analysis
- Examined means, medians, variances, and IQRs for all features.
- Created a correlation matrix to identify feature relationships.

### c. Data Visualization
- **Faceted Bar Chart**: Room types vs. cleaning fee policies.
- **Histogram (‘Accommodates’)**: Most listings host 2 guests.
- **Correlation Heatmap**: Strong relationships among bedrooms, beds, accommodates, log_price.
- **Proportional Bar Chart**: Property type by capacity.
- **Histogram (‘Log Price’)**: Normalized price distribution.
- **Scatterplot**: Bedrooms vs. price by room type and capacity.

### Business Implications
- Hosts can optimize pricing and listings.
- Guests gain insights on value.
- Airbnb can improve recommendation and pricing strategies.

---

## Regression Modeling: *Estimating Airbnb Rental Prices in NYC*

### Data Preprocessing & Variable Selection
- Removed identifiers and sparse or redundant features.
- Created `property_group`.
- Evaluated multicollinearity via correlation matrix.

### Model Training & Evaluation
- 60/40 training-validation split.
- Initial MLR model metrics:
  - RMSE: 0.362
  - MAE: 0.271
  - MAPE: 5.91%
  - Adj. R²: 0.696

### Model Refinement: Improving Parsimony
- Dropped non-significant predictors (p > 0.05).
- Stepwise regression used for final selection.

### Model Comparison
| Model                     | RMSE  | MAE   | MAPE   |
|---------------------------|-------|-------|--------|
| Initial MLR               | 0.362 | 0.274 | 5.98%  |
| Refined MLR (fewer vars)  | 0.365 | 0.276 | 6.04%  |
| Stepwise Regression Model | 0.362 | 0.274 | 5.99%  |

### Business Insights
- Accommodation capacity and location are top price drivers.
- Host responsiveness and property type also matter.
- Stable model performance suggests strong generalizability.

### Summary of Key Findings
- Adjusted R² of 0.696
- RMSE ~0.362 on validation
- Significant variables align with intuitive market behavior

---

## Classification Modeling: Predicting Rental Characteristics

### a. k-Nearest Neighbors (k-NN) - *Cleaning Fee Prediction*
- Target: `cleaning_fee` (binary)
- Preprocessing: Removed irrelevant vars, standardized numeric features.
- k = 11 yielded 73.3% accuracy on validation.
- Key predictors: `log_price`, `accommodates`, `bedrooms`, `beds`, `review_scores_rating`, etc.

### b. Naive Bayes - *Price Tier Classification*
- Price tiers: Pricey Digs, Above Average, Below Average, Student Budget
- Predictors: `property_type`, `room_type`, `accommodates`, `bathrooms`, `bedrooms`
- Accuracy:
  - Train: 51.9% (Kappa: 0.354)
  - Validation: 50.7% (Kappa: 0.339)
- Insights:
  - High performance for “Pricey Digs”
  - Room type and size major influencers

### c. Classification Tree - Cancellation Policy
- Target: `cancellation_policy` (flexible, moderate, strict)
- Key predictors: `log_price`, `number_of_reviews`
- Implications:
  - Price and reviews influence cancellation leniency
  - Visual model supports intuitive understanding

---

## Unsupervised Learning: Clustering Brooklyn Neighborhoods

### a. Data Preprocessing
- Filtered to Brooklyn listings.
- Created `avg_review_scores_rating`.
- Final variables: `log_price`, `accommodates`, `bathrooms`, `amenities_count`, `avg_review_scores_rating`, `neighbourhood`

### b. Determining Optimal Clusters
- Elbow method: Optimal k = 4

### c. k-Means Clustering Results
| Cluster | log_price | accommodates | bathrooms | amenities_count | avg_review_scores_rating |
|---------|-----------|--------------|-----------|------------------|---------------------------|
| 1       | 5.35      | 6.50         | 2.33      | 20.4             | 0.204                     |
| 2       | 4.16      | 1.96         | 1.11      | 14.7             | 0.165                     |
| 3       | 4.92      | 3.92         | 1.03      | 21.7             | 0.116                     |
| 4       | 4.38      | 2.30         | 1.11      | 13.5             | 0.938                     |

### d. Cluster Interpretations
- **Cluster 1** - Luxury Living
- **Cluster 2** - Bare-Bone Bargains
- **Cluster 3** - Classic Comfort
- **Cluster 4** - Your Average Joes

### e. Boxplot Visualizations
- Price tiers, accommodation size, and review ratings all showed clear group differences.

---

## Conclusions
This project applied regression, classification, and clustering to NYC Airbnb data to generate strategic insights.

### Strategic Applications by Stakeholder
- **Airbnb**: Better recommendations via cluster analysis.
- **Property Managers**: Data-driven pricing.
- **Investors**: Identify value clusters.
- **Guests**: Choose based on budget and amenities.
- **Hotels**: Compete with data-backed features.
- **Policymakers**: Craft informed regulation.

### Broader Implications
The methods used can be replicated in other urban rental markets to optimize operations and strategy.

> **Final Thoughts**: Machine learning and statistical analysis, when applied to real-world Airbnb data, reveal powerful insights that benefit a range of stakeholders - from renters and hosts to investors and regulators.
