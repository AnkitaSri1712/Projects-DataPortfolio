# Projects-DataPortfolio

Project: Global Human Development Dashboard
This project focuses on analyzing global human development indicators using the Human Development Index (HDI) dataset published by the United Nations Development Programme (UNDP). The analysis explores the relationship between human development and key socioeconomic factors such as life expectancy, education, and income through exploratory data analysis, statistical modeling, and machine learning techniques. Interactive visualizations and dashboard components developed using Python and Plotly provide insights into development patterns across 204 countries and support evidence-based understanding of global development outcomes.


Project: Psychometric Validation of a Social-Emotional Learning (SEL) Scale

This project focuses on validating a multi-dimensional psychometric scale designed to measure Social-Emotional Learning (SEL) competencies — self-awareness, empathy, resilience, collaboration, and emotional regulation — using simulated item-response data built on documented, realistic parameters. The analysis applies the standard psychometric validation battery: Classical Test Theory for item-level analysis, Cronbach's alpha for reliability, Exploratory Factor Analysis with parallel analysis to confirm structural validity, and Item Response Theory (Graded Response Model) to estimate item discrimination and difficulty. Built using Python with the factor_analyzer, pingouin, and girth libraries, the project demonstrates an end-to-end scale-validation workflow directly applicable to designing and validating real-world education and SEL assessment instruments.


Project: Sampling Plan Design & Automated Welfare Survey Analysis Pipeline

This project designs a statistically defensible sampling plan and builds an automated analysis pipeline for a social welfare beneficiary survey, modeled on the evaluation studies used to assess scheme awareness and benefit uptake among target populations. The workflow covers stratified sample-size calculation — incorporating finite population correction, design effects, and non-response adjustment — through to data cleaning, chi-square testing, and logistic regression to identify predictors of benefit receipt across social categories and states. Built using Python with NumPy, pandas, SciPy, and statsmodels, with automated chart and report generation, the project reflects the full statistical lifecycle of a Ministry or UN-style program evaluation, from study design through to written findings.


Project: Regression and Classification using Scikit-learn

This project applies and compares supervised learning techniques across regression and classification tasks using the California Housing and Wine datasets. For regression, Linear, Ridge, and Lasso models are evaluated across a logarithmic sweep of regularization strengths, with Lasso achieving the lowest test MSE (0.548), highlighting the value of coefficient shrinkage for generalization. For classification, six models — Logistic Regression, SVM, Decision Tree, Random Forest, and two neural network architectures — are compared using accuracy, macro F1-score, and confusion matrices, with Random Forest reaching perfect test accuracy. Built using Python and scikit-learn, the project demonstrates end-to-end model selection, regularization analysis, and multi-metric evaluation for both continuous and multi-class prediction problems.


Project: Part-of-Speech Tagging using Hidden Markov Models

This project implements a Part-of-Speech tagger from first principles using a Hidden Markov Model with Viterbi decoding, trained and evaluated on the NLTK Penn Treebank corpus with the Universal Tagset. Transition and emission probabilities are estimated via frequency counts with Laplace smoothing, and an unknown-word handling extension using tag-prior probabilities improves validation accuracy from 90.09% to 90.46%. Quantitative and qualitative analysis identify specific sentences where unknown-word handling corrects tagging errors made by the baseline model. Built entirely in Python without pre-built tagging libraries, the project demonstrates core NLP sequence-modeling techniques, including dynamic programming-based decoding and probabilistic smoothing.

Python:-

Project 1:Electric Vehicle Market Analysis

~ Having potential benefits like significantly fewer emissions, lower repair and maintenance costs, cheaper to fuel than conventional gas vehicles, electric vehicles are getting popularity all over the world. This project analyzes Electric vehicle market in USA, by taking into consideration the dataset which consists of detailed information such as Model year, Model type, Electric Range etc. The purpose is to understand EV market through a decade and predict future vehicle market for EVs and their manufacturers.



Project 2:Customer Behaviour Analysis 

~This project revolves around analysing customer behaviour and segmentation within an e-commerce context using Python and various data visualization techniques. 
It identifies potential areas for improvement such as reducing churn rate and optimizing customer engagement strategies. Overall, the analysis provides actionable insights aimed at enhancing business growth and profitability in the e-commerce domain.



Project 3: Supply Chain Analysis 

~This project focuses on analyzing various aspects of a company's supply chain using Python and visualization libraries such as Plotly. The analysis provides actionable insights for optimizing supply chain operations, improving product profitability, and enhancing customer satisfaction through efficient logistics and quality management strategies. The visualizations and metrics derived from the analysis offer a comprehensive overview aimed at supporting strategic decision-making within the company's supply chain management.

Project 4: Sports Analysis 

~This project aims to analyze a cricket match between Royal Challengers Bangalore (RCB) and Delhi Capitals (DC) using data from innings deliveries. Various aspects of the game are explored, including batting performance, bowling effectiveness, partnership analysis, phase-wise scoring rates, dismissal types, and pivotal moments. The analysis provides insights into team strategies, player performances, and key moments that influenced the match outcome.

Project 5: Profit Prediction

~This project aims to analyze and predict the profitability of startups based on their spending patterns in different areas such as R&D, Administration, and Marketing. The dataset used contains information about 50 startups including their expenditures and location (State). The main goal is to build a predictive model using linear regression to understand which factors most significantly influence a startup's profit.

Project 6: Decision tree algorithm(ML)

~In this project, we aim to build a classification model to predict the safety of cars based on various attributes. The dataset used contains information on car attributes like buying price, maintenance cost, number of doors, capacity, trunk size, and safety features, along with the safety classification as 'unacceptable', 'acceptable', 'good', or 'very good'. This showcases the application of Decision Tree classifiers for multiclass classification tasks using Python's machine learning ecosystem, emphasizing data preprocessing, model training, evaluation, and interpretation of results.

Project 7: Developing a Car rental application

~The Car Rental System project simulates a simple car rental shop where customers can rent cars on an hourly, daily, or weekly basis. The system is implemented in Python using object-oriented programming concepts. It consists of two main classes: CarRental and Customer.The CarRental class manages the rental operations and inventory of cars available in the shop. It allows customers to check available stock, rent cars on different time bases (hourly, daily, weekly), return cars, and calculates bills based on the rental duration and type.


Project 8: Developing a shopping application

~The Online Shopping System project facilitates an interactive platform for both administrators and users to manage and engage in shopping activities. Implemented in Python, it employs object-oriented programming principles to model users, administrators, categories of items, individual items, carts, and payment methods. This project demonstrates fundamental object-oriented programming concepts applied to simulate a comprehensive online shopping experience



Project 9: Conducted quantitative analysis on stocks data

~ Conducted quantitative analysis on stock market data, focusing on price trends, volatility, and technical indicators.
Implemented time series analysis, moving averages, and momentum indicators to identify trading patterns.
Utilized Python (Pandas, NumPy, Matplotlib, Scikit-learn) for data processing, feature engineering, and modeling.
Applied statistical methods and machine learning algorithms (e.g., regression, ARIMA) for predictive analytics.
Developed interactive visualizations and dashboards using Plotly/Streamlit for data-driven insights.


Project 10: Developed a Multivariate Time Series Forecasting model using the Vector Autoregression (VAR) approach to predict stock prices of four different stocks.

~ Performed Augmented Dickey-Fuller (ADF) test to ensure stationarity of time series data before modeling.
Engineered features from historical prices, trading volume, and technical indicators to improve predictive accuracy.
Implemented Python (Pandas, NumPy, Statsmodels, Matplotlib, Seaborn) for data preprocessing, model building, and evaluation.
Assessed model performance using RMSE, MAE, and visualized forecasted trends using Matplotlib and Plotly.



Project 11: Developing a cosmetic recommendation system

~Tools/Technologies: Python, Pandas, NumPy, scikit-learn, t-SNE, Bokeh
•	Developed a content-based recommendation system for cosmetic products, using chemical ingredient lists to recommend similar items to consumers with different skin types.
•	Processed raw ingredient data (1472 cosmetic products) through tokenization, creating a document-term matrix (DTM) to represent ingredient presence.
•	Applied t-SNE (T-distributed Stochastic Neighbor Embedding) to reduce dimensionality of the high-dimensional ingredient matrix and visualize product similarity in two dimensions.
•	Visualized product similarity using Bokeh, creating an interactive plot to explore similar products based on ingredient overlap.
•	Drew insights into cosmetic product similarities and potential alternative products for consumers, allowing them to make more informed purchase decisions based on ingredient matching.



Project 12: Developed a Convolutional Neural Network (CNN) model to classify images of lightning, snow, and various weather conditions.

~ Collected and preprocessed a dataset of weather images, applying data augmentation (rotation, flipping, normalization) for robustness.
Built and trained the CNN model using TensorFlow/Keras, optimizing performance through hyperparameter tuning.
Achieved high classification accuracy using transfer learning (ResNet, VGG16) and evaluated results with precision, recall, and F1-score.




Project 13: Performed stock Price Direction Prediction using Support vector machine ML algorithm

Built a Support Vector Machine (SVM) model to predict stock price direction (up/down) based on historical market data.
Collected and processed stock price data, technical indicators (SMA, RSI, MACD), and market sentiment for feature engineering.
Implemented data preprocessing, feature selection, and hyperparameter tuning to optimize model performance.
Utilized Python (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn) for data analysis, modeling, and visualization.
Achieved improved prediction accuracy and evaluated performance using precision, recall, and confusion matrix metrics.




Excel:-

Project 1: Customer Success Analysis and Dashboard

Project 2: Sales analysis and Dashboard 


MySQL:-

Project 1: Employee Absenteeism Analysis and Compensation Optimization

~This project focuses on analyzing absenteeism patterns among employees and optimizing compensation strategies based on various criteria such as health status and smoking habits. The data used includes information on absenteeism incidents, employee characteristics, reasons for absence, and compensation rates.By leveraging data-driven insights from the analysis, the project aims to enhance employee health awareness, reduce absenteeism rates, and optimize compensation strategies to align with company objectives and financial capabilities.

Project 2:Tokyo Olympics 2021 Data Analysis and Insights

 ~This project involves comprehensive analysis and exploration of data from the Tokyo 2021 Olympics. The dataset includes information on athletes, coaches, medals won, team performances, and continental representation. The primary objectives are to derive insights into participant demographics, team performances, coach-player dynamics, and continental contributions to the games.

 Project 3: Sales and Profit Analysis for Retail Operations

 ~This project focuses on analyzing sales and profit data from a retail company. The dataset includes detailed information on orders, customers, products, and shipping details. The primary goal is to derive insights into sales performance, profitability, customer distribution, and operational efficiency across different segments, regions, and product categories.

 Project 4: : HR and Project Management Database Analysis

 ~This project involves creating and analyzing a database named "employees" that includes tables related to employee records, data science team details, and project information. The dataset encompasses employee demographics, roles, experience levels, salaries, ratings, and project assignments across various departments and countries. The objective is to derive insights into employee performance, departmental dynamics, project statuses, and to facilitate efficient HR management and project oversight.

 Project 5: Title: Airline Management and Customer Analysis
 
~This project involves managing and analyzing data related to airline operations, customer details, ticket sales, and flight routes using MySQL queries. The dataset encompasses information on passengers, flights, routes, ticket details, and customer demographics. The objective is to derive insights into customer preferences, flight patterns, revenue generation, and to facilitate efficient airline management and customer relationship management.


Power BI:-

Project 1: Project Management Dashboard

Project 2: Email Marketing analysis Dashboard

Project 3: Real estate(USA) stats Dashboard




 














