#!/usr/bin/env python
# coding: utf-8

# # Quiz 6: Probability theorems
# 

# If you wish, you can do a self grading version of the quiz below. In order to open the interactive version of the notebook, you need to open it in Binder. To do this, hover your mouse over the rocket symbol (near the top right of the page) and click on the word "Binder" which should appear. This will load an interactive quiz. The first time you load this it may take a few minutes. 

# ##  Preamble
# 
# If running in interactive mode, before attempting the questions below you need to run the whole notebook (click "Cell" from the dropdown menus and then choose "Run All"). 
# 
# The code below installs the required packages, loads up the solutions and the multiple choice question function used below.

# In[1]:


get_ipython().run_cell_magic('capture', '', '%run ./Solutions.ipynb ')


# ## Quiz
# 
# This quiz tests materials in the section called "Probability theorems". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# **Question 1**: If the sample space is ages (to nearest year) of people under 20 years old, which of these groupings form partitions of the sample space?
# 
# - Age groups 0-12, 10-19 years
# - Age groups 0-5, 6-9, 10-19, 20-25 years
# - Age groups 0-3, 4-13, 14-19 years
# - Age groups 0-5, 6-9, 11-14, 15-19 years
# 
# Choose the correct answer:
# 
# 1. All four are partitions
# 2. Only the third option is a partition
# 3. The third and fourth are partitions
# 4. None of them are partitions

# In[2]:


display(qs6["Q6_1"])


# The following table shows results from a population-based survey about respiratory health. 
# 
# | Smoking status | Relative frequency | Proportion with asthma |
# | :-: | :-: | :-: | 
# | Former | 0.35 | 0.20 | 
# | Current | 0.20 | 0.15 | 
# | Never  | 0.45 |  0.05 | 

# **Question 2**: What is the probability that a randomly selected individual from this population has asthma?
# 
# Choose the correct answer:
# 
# 1. $0.15$
# 2. $1$
# 3. $0.4$
# 4. $0.1225$

# In[3]:


display(qs6["Q6_2"])


# Electronic health records were used to establish the main medium of contact for each patient with their GP during the year 2020 and the year 2010, in order to explore changes in health service use. 
# 
# In 2010, 80\% of patients used face-to-face appointments as their main contact with their GP. Results for 2020 are displayed in the table below. Patients are grouped by their main GP contact method in 2010 (face-to-face or telephone). The numbers shown are conditional probabilities of using each method of contact in 2020, given their method of contact in 2010.
# 
# 
# | In 2010 | In 2020:  | Face-to-face | Telephone | Video consultation |
# | :-: | :-: | :-: | :-: | :-: |
# | Face-to-face | | 0.9 | 0.05 | 0.05 | 
# | Telephone | | 0.1 | 0.6 |  0.3|

# **Question 3**: A patient from this population attends a video consultation in 2020. What is the probability that that same patient used to have face-to-face appointments as their main contact in 2010?
# 
# Choose the correct answer:
# 
# 1. $0.4$
# 2. $0.3$
# 3. $0.2$
# 4. $0.1$

# In[4]:


display(qs6["Q6_3"])

