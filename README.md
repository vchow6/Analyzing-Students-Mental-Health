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

* Based on the results obtained from the the [queries](https://github.com/vchow6/Analyzing-Students-Mental-Health/blob/main/mental_health_5.10.24.ipynb) and above visualizations, we can infer that international students with longer durations of stay tend to exhibit higher average depression test scores (**average_phq**) and coparatively lower scores in social connectedness (**average_scs**). However, it's noteworthy that they experience lower levels of acculturative stress (**average_as**), which are more commonly observed in students with shorter stays. This observation aligns with the possibility that students who have not been away from home for an extended period might encounter culture shock and feelings of homesickness

## Recommendations:

The following recommendations are proposed to enhance the well-being of international students coping with being away from home: 
* **Accessible Mental Healthcare:** The Japanses government should consider establishing accessible and affordable mental healthcare services tailored for international students
* **Promoting Social Connections:** Initiatives such as the buddy system should be explored to foster increased social interactions between domestic and international students, as well as among international students themselves
*  **Student Organizations:** The creation of student organizations specifically for international students would provide a supportive environment where they can foster a sense of belonging and connect with peers who share similar experiences
* **Local Family Match Programs:** Implementing programs that match international students with local families could greatly aid in their adjustment to the new environment and culture

By implementing these suggestions, institutions can better support international students adapting to their new surroundings and alleviate potential challenges associated with being away from home. 
