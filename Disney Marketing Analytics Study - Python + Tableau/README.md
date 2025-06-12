# Disney Data Analytics Project

## Introduction

This project presents a comprehensive data-driven analysis of The Walt Disney Company’s operations across multiple domains, including movie performance, customer segmentation, strategic product optimization, financial forecasting, and marketing effectiveness. Utilizing a range of analytical techniques—such as Tableau visualizations, exploratory data analysis, clustering, conjoint analysis, predictive modeling, and A/B testing—I extracted actionable insights to inform Disney’s content strategy, customer targeting, operational planning, and revenue optimization. The findings demonstrate how integrated analytics can guide business decisions in a complex entertainment ecosystem.

---

## Project Sections

### Data Visualization – Disney Movies Dashboard (Tableau)

To begin the analysis, I engineered two calculated fields to streamline and clarify genre and rating data:

- **CombinedGenre:** Groups specific genres (e.g., ‘Black Comedy’, ‘Romantic Comedy’) into broader categories like ‘Comedy’. Null values were labeled as ‘Other’ to preserve completeness.
- **mpaa_rating_cat:** Classifies films by MPAA rating, with nulls categorized as ‘Not Rated’ for comprehensive analysis of content type and rating trends.

Using Tableau, I developed a Disney Movies Dashboard that visualizes decades of Disney’s cinematic evolution through:

- **Time Series Charts:** Showcased the rise in film production, peaking at 32 films in 1995, followed by stabilization around 10–20 films annually.
- **Histograms and Stacked Bar Charts:** Highlighted portfolio diversification and a strategic emphasis on PG-rated, family-friendly content.
- **Scatterplots:** Mapped film release dates to inflation-adjusted gross revenue, revealing enduring success of classics like *Snow White* and *Pinocchio*.
- **Treemaps:** Analyzed genre-level revenue and output. Adventures and comedies surfaced as top-performing categories. Musicals, while fewer in number, showed high revenue potential—indicating a strategic opportunity for growth.

This dashboard provides Disney decision-makers with a clear, data-driven view of genre performance, content strategy, and audience trends. It helps identify high-performing film types and revenue opportunities, supporting future investment and content planning.

---

### Exploratory Data Analysis (Summary Stats) – Disney Movie Performance

This section focuses on uncovering key trends in Disney’s movie performance using exploratory data analysis (EDA) in Python. By cleaning and summarizing the dataset, I identified insights to inform Disney’s strategic planning around genre performance, content ratings, and revenue generation.

#### Data Preparation

- Loaded and reviewed Disney’s movie dataset containing titles, release dates, genres, MPAA ratings, and revenue (adjusted for inflation).
- Addressed missing values in critical fields:
  - Replaced null genres with “Other”
  - Reclassified missing ratings as “Not Rated”
- Ensured the dataset was clean and ready for robust analysis.

#### Key Findings

- **Revenue Insights:**
  - Musicals generated the highest average gross revenue (~$604M), followed by Adventure and Action.
  - G-rated films delivered the strongest average returns ($291M), indicating Disney’s continued strength in family-friendly content.
  - R-rated and Documentary films yielded the lowest average revenue, suggesting limited profitability.

- **Production Trends:**
  - Disney most frequently produces Comedy (182 films) and Adventure (129 films) titles, typically rated PG or PG-13.
  - Despite high revenue potential, Musicals are underrepresented (only 16 films), highlighting a growth opportunity.
  - A considerable number of R-rated films (102) exist despite lower returns—suggesting misalignment with brand image.

- **Genre x Rating Distribution:**
  - Most common combinations include Comedy–PG and Adventure–PG, aligning with high family appeal and revenue performance.
  - Cross-tabulation offers insight into content strategy and target demographics.

#### Strategic Implications

- Prioritize funding toward high-performing genres (e.g., Musicals, Adventures) and family-friendly ratings (G/PG).
- Explore expanding production of Musicals to capitalize on strong ROI despite low output.
- Reevaluate investment in R-rated films, which deviate from Disney’s core audience and underperform.

---

### Segmentation & Targeting – Customer Clustering and Marketing Insights

To segment Disney customer families into meaningful groups, I applied K-means clustering on financial, behavioral, and demographic variables, including estimated net worth, leisure and travel spending, visit frequency, credit scores, and family composition.

#### Data Preparation & Model Building

- Normalized and cleaned data.
- Used elbow method and silhouette scores to select six optimal clusters.

#### Cluster Exploration & Insights

Statistical analysis and visualizations characterized clusters by spending habits, visit frequency, credit ratings, and household structure.

#### Cluster Naming & Targeting Strategies

Each cluster was named after Disney films reflecting unique attributes:

- **The Lost Boys of Neverland:** Low visit frequency, high online merchandise spending—ideal for digital advertising on Disney+.
- **Aristocats:** Wealthy, high spenders with premium leisure activities—targeted for luxury resort promotions.
- **Honey I Shrunk the Kids:** Families with older children and lower spending—appropriate for nostalgic, age-specific events.
- **Planes:** High travel spenders with strong finances—candidates for Disney-branded credit cards and travel rewards.
- **Disney Dreamers:** Frequent park visitors with limited travel budgets—ideal for local seasonal passes and discounts.
- **Cheaper by the Dozen:** Larger families with lower credit scores and incomes—best served with promotional offers and kids’ ticket discounts.

#### Business Impact

This segmentation supports personalized marketing and strategic resource allocation, enhancing customer engagement, optimizing marketing spend, and increasing lifetime customer value.

---

### Conjoint Analysis & Amenity Optimization – Disney Hawaii Hotel

This section applies conjoint analysis via linear regression to quantify hotel amenity impacts on customer satisfaction and identify the most cost-effective amenity package for Disney’s new Hawaii hotel.

#### Data Preparation & Modeling

- Created dummy variables for amenity options (e.g., Wi-Fi quality, breakfast type, parking).
- Split data into training and test sets.
- Fitted a linear regression model estimating baseline ratings and incremental effects of amenities.

#### Key Metrics

- Calculated rating improvements and cost-efficiency (“rating change per dollar”).
- Sorted amenities to highlight those maximizing satisfaction within budget.

#### Insights & Recommendations

- High-impact, cost-effective amenities: “Best in Class” Wi-Fi, full buffet breakfast, flexible check-in, shuttle service.
- Less cost-effective: jacuzzis with minimal rating benefit relative to cost.
- Recommended package totals ~$248.45 per room per night with predicted rating increase from 5.48 to 8.89.

---

### Strategic Analysis Memo – Disney Theme Parks Case Analysis

This memo evaluates key strategic decisions from the Harvard Business School case *The Walt Disney Company: Theme Parks* regarding DisneyQuest, the Hawaiian hotel, and technology upgrades.

#### Context & Objectives

- Closed universe analysis based solely on case data.
- Focus on balancing investments and competitive pressures, particularly from Universal.

#### Key Strategic Insights

- Prioritize technological overhaul with RFID-enabled Magic Bands.
- Benefits include enhanced guest interaction, operational efficiencies, sustainability, and personalized experiences.
- Strategy preserves core brand values while embracing innovation.

---

### Forecasting Net Income – Disney Quarterly Financial Analysis

This section forecasts Disney’s net income for 2023 using historical quarterly data (2010–Q1 2023).

#### Data Preparation & Cleaning

- Cleaned dataset by removing unnecessary columns, converting income to numeric, and setting datetime index.

#### Exploratory Analysis & Trend Visualization

- Visualized historical trends with rolling averages to smooth volatility.

#### Forecasting Approach

- Applied a 4-quarter rolling average to project net income for 2023.

#### Purpose & Implications

- Provides a baseline forecast for financial planning.
- Highlights need to consider external market factors for comprehensive forecasting.

---

### Classification – Predicting Disney Cruise Customer Return

This analysis predicts household likelihood to book repeat Disney Cruises based on demographics, spending, and trip characteristics.

#### Data Preparation and Modeling

- Handled missing data and encoded categorical variables.
- Built and tested Logistic Regression and Random Forest models.

#### Model Evaluation

- Assessed using MSE, accuracy, precision, recall, and F1 score.

#### Key Insights and Business Impact

- Important predictors include oldest child’s age, distance to port, ticket spend, incidental spending, and discounts.
- Models predict nuanced return probabilities to guide targeted marketing.
- Enables better customer retention and revenue growth strategies.

---

### A/B Testing – Popcorn Bucket Sales Comparison

This analysis evaluates sales differences among Disney popcorn bucket designs to identify customer preferences.

#### Data Preparation and Testing Approach

- Loaded quarterly sales data by park and bucket type.
- Conducted pairwise independent two-sample t-tests at 0.05 significance level.

#### Key Findings

- Significant sales differences found among bucket designs (e.g., Cinderella vs. Star Wars).
- No significant sales differences across park locations.

#### Business Implications

- Prioritize high-performing designs like Star Wars and RedWhite.
- Standardize marketing and distribution strategies across parks.
- Focus on popular designs to maximize revenue and collector appeal.

---

## Conclusion

In summary, this multi-faceted analytics project delivers valuable insights that support Disney’s strategic growth and operational efficiency. From revealing high-potential movie genres and optimizing customer marketing segments, to identifying cost-effective hotel amenities and forecasting financial performance, each analysis contributes to data-driven decision-making. Together, these efforts highlight the power of analytics in enhancing customer engagement, optimizing resource allocation, and sustaining Disney’s competitive advantage in entertainment and hospitality.

---

*For detailed code, data files, and visualizations, please refer to the respective folders and notebooks in this repository.*
