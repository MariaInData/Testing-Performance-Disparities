# Testing Performance Disparities  
<p align="center">
<img width="906" alt="image" src="https://user-images.githubusercontent.com/125685678/222253605-3f567be3-f481-4f17-bb62-7abbb1557b07.png">
</p>
<p align="center">  Identifying testing performance for a standardized exam and how to improve testing performance </p>

# Business Goal  
Can we identify patterns of testing performance disparity in the standardized exam that correlate to regional available testing resources and sites, and identify potential drivers of those disparities?  

# Business Impact  
By identifying the cities that performing poorly, the client can tell states what cities are performing poorly and give actionable insights to help the states improve their candidates' scores.  

# Overview of the Process  
The analysis can be broken down into 3 steps.  
<p align="center"> <img width="1019" alt="image" src="https://user-images.githubusercontent.com/125685678/222251015-fd3f5b1d-b53b-4e1a-b99d-ff098fe654d5.png">  </p>
1. Are there any disparities in GED Performance?  
- To identify if there are disparities in testing performance, I created 5 KPIs to measure disparities on. The reason why I choose 5 over just if a candidate passed is that there is more to measure than just passing the exam. In addition to passing,  it is also important to know how long it took as well as resources used. Looking at all 5 KPIs, at a state level, it is evident that there are disparities.
<p align="center">  <img width="475" alt="image" src="https://user-images.githubusercontent.com/125685678/222251435-9c628c77-cd54-4a1f-a77d-6c9826932c7a.png">  </p>   
- At this point, disparities are shown to exist. To further the analysis, I brought the analysis level from state-level to city-level so that insights could be more actionable.  

2. Which poorly performing cities can we focus on?
<p align="center">  <img width="1031" alt="image" src="https://user-images.githubusercontent.com/125685678/222252751-c1b3ea05-5863-442c-a0a9-1212c811d14c.png">  </p>  

- To narrow down the cities to focus on, I  clustered on the 5 KPIs using K-means. There were two clusters that came from K-means with the second cluster performing significantly worse on all 5 KPIs. Cluster 2 became the focus of my analysis. Next, I used propensity score matching to control for demographics with the treatment being more than the median testing resources available in the city. This analysis narrowed it down to the lowest 1,623 cities in the country to focus on.  

3. How can we improve the testing performance?  
- Using linear regressions, I tested multiple hypothesis to identify what could be done to decrease the testing performance disparities in the lowest performing cities. I found taking the test prep and prep courses helped with testing performance as well as the impact of study aides on passing rate. Some study aides are delivered online and some are in-person. Understanding that the science online video was an effective study guide but math testing score only improved with in-person tutoring would allow for the city to better allocate their resources.
