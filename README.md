# Analyzing Students' Mental Health

In this Data Camp project, I performed exploratory data analysis on a dataset around mental health of domestic and international students. I performed SQL querying to look at how social connectedness and cultural issues affect mental health. Finally, I vizualized the results of my analysis using the Python Plotly package 

## The Data

This survey was conducted in 2018 at an international Japanese university and the associated study was published in 2019. It was approved by several ethical and regulatory boards. 

The study looks into social connectedness and acculturative stress to predict depression level.

Social connectedness: measure of belonging to a social group or network

Acculturative stress: stress associated with learning about and integrating into a new culture

[See paper for more info, including data description.](https://www.mdpi.com/2306-5729/4/3/124/htm)

## Conclusion
* In looking at the histogram below, international students have a higher risk of mental health difficulties compared to the general population (domestic students).

  ![image](https://github.com/vchow6/Analyzing-Students-Mental-Health/blob/main/Distribution%20of%20the%20total%20scores%20from%20the%20PHQ-9%20test.png) 
  *The PHQ-9 form is a brief, self-administered questionnaire that assesses depression symptoms. The higher the score, which is scored between 0-25, the more symptoms of depression one experience, and the more severe the depression is*

* The heatmap shows a higher correlation acculturative stress (ToAS) than the social connectedness stress (ToSC) when comparing against the PHQ-9 score

  ![image](https://github.com/vchow6/Analyzing-Students-Mental-Health/blob/main/Heatmap.png)
