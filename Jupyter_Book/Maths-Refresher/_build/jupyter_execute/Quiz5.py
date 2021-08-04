#!/usr/bin/env python
# coding: utf-8

# # Quiz 5: Probability
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
# This quiz tests materials in the section called "Probability". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# Four data scientists (Anjali, Natalie, Xavier and Yu Yan) enter a building which contains six meeting rooms (labelled 1 to 6). Each data scientist enters one of the meeting rooms. 

# **Question 1**: What is a suitable sample space for the experiment of recording the number of data scientists who enter meeting room 5?
# 
# Choose the correct answer:
# 
# 1. $\Omega = \{1, 2, 3, 4 \}$
# 2. $\Omega = \{5 \}$
# 3. $\Omega = \{0, 1, 2, 3, 4 \}$
# 4. $\Omega = \{1, 2, 3, 4, 5, 6 \}$

# In[2]:


display(qs5["Q5_1"])


# **Question 2**: What is a suitable sample space for the experiment of recording the meeting room that Xavier enters?
# 
# Choose the correct answer:
# 
# 1. $\Omega = \{1, 2, 3, 4 \}$
# 2. $\Omega = \{5 \}$
# 3. $\Omega = \{0, 1, 2, 3, 4 \}$
# 4. $\Omega = \{1, 2, 3, 4, 5, 6 \}$

# In[3]:


display(qs5["Q5_2"])


# **Question 3**: What is a suitable sample space for the experiment of recording the number of meeting rooms that one or more data scientists enter?
# 
# Choose the correct answer:
# 
# 1. $\Omega = \{1, 2, 3, 4 \}$
# 2. $\Omega = \{3 \}$
# 3. $\Omega = \{0, 1, 2, 3, 4 \}$
# 4. $\Omega = \{1, 2, 3, 4, 5, 6 \}$

# In[4]:


display(qs5["Q5_3"])


# In a popular internet search engine, the probability that a search term contains the word "influenza" is 0.003. The  probability that a search term contains the word "antibiotic" is 0.001. 
# 
# One search term is drawn randomly from today's searches. 

# **Question 4**: What is the probability that the search term contains the word "influenza" *and* the word "antibiotic"?
# 
# Choose the correct solution:
# 
# 1. $0.004$
# 2. $0.0003$
# 3. $0.000003$
# 4. $0.0004$

# In[5]:


display(qs5["Q5_4"])


# **Question 5**: What is the probability that the search term either contains the word "influenza" or the word "antibiotic" or both? 
# 
# 
# Choose the correct answer:
# 
# 1. $0.04$
# 2. $0.002$
# 3. $0.000205$
# 4. $0.003997$

# In[6]:


display(qs5["Q5_5"])


# For questions 4 and 5, what is the key assumption being made? Think about possible ways in which the assumption could be violated.

# A 50-year old man has probability 0.05 of dying before reaching age 60. The probabilities of dying in
# the next 10 years for 60, 70, 80, 90 and 100 year old men are 0.15, 0.20, 0.50, 0.70 and 1.00 respectively.
# 
# To answer the next two questions, it may help to first draw a probability tree to illustrate the survival experience of a 50-year old man.

# **Question 6**: What is the probability that a 50-year old man will survive until he is 80?
# 
# 
# Choose the correct answer:
# 
# 1. $0.48$
# 2. $0.65$
# 3. $1.00$
# 4. $0.05$

# In[7]:


display(qs5["Q5_6"])


# **Question 7**: What is the probability that a 50-year old man will die between the ages of 70 and 90?
# 
# Choose the correct answer:
# 
# 1. $0.48$
# 2. $0.65$
# 3. $1.00$
# 4. $0.05$

# In[8]:


display(qs5["Q5_7"])


# The following table shows results from a large population-based study of COVID-19 in the UK during the first half of 2020. 
# 
# | Age-group (years)  | Relative frequency | Proportion admitted to hospital with COVID-19 |
# | :-: | :-: | :-: | 
# | 0-29 | 0.2 | 0.001 | 
# | 30-69 | 0.65 | 0.01 | 
# | 70+  | 0.15 |  0.05 | 
# 
# For the next few questions we recommend you draw a probability tree displaying these data.
# 
# In the questions below, we use $Age_{0-29}, Age_{30-69}$ and $Age_{70+}$ to denote the events of being in the three age-groups. We use $H$ and $\overline{H}$ to denote the events of being hospitalised and not being hospitalised, respectively.

# **Question 8**: What is the probability that a randomly selected person is 30 years or over and not admitted to hospital with COVID-19?
# 
# Choose the answer which displays the correct calculation:
# 
# 1. $(P(Age_{30-69}) \times P(Age_{70+}) + (P(\overline{H}  | Age_{30-69}) \times P(\overline{H}  | Age_{70+}))$
# 2. $P(Age_{30-69}) \times P(\overline{H} | Age_{30-69}) \times P(Age_{70+}) \times P(\overline{H}  | Age_{70+})$
# 3. $(P(Age_{30-69}) + P(Age_{70+})) \times (P(\overline{H}  | Age_{30-69}) + P(\overline{H}  | Age_{70+}))$
# 4. $P(Age_{30-69}) \times P(\overline{H}  | Age_{30-69}) + P(Age_{70+}) \times P(\overline{H}  | Age_{70+})$

# In[9]:


display(qs5["Q5_8"])


# **Question 9**: What is the probability that a randomly selected person is 30 years or over and admitted to hospital with COVID-19?
# 
# Choose the correct answer:
# 
# 1. $1 - P(Age_{30+} \cap \overline{H})$
# 2. $0.014$
# 3. $1 - P(Age_{30+})\times P(\overline{H})$
# 4. $0.00006375$

# In[10]:


display(qs5["Q5_9"])


# **Question 10**: What is the probability that a randomly selected person is admitted to hospital with COVID-19?
# 
# Choose the correct answer:
# 
# 1. $0.0142$
# 2. $0.006$
# 3. $0.00006375$
# 4. $0.016$

# In[11]:


display(qs5["Q5_10"])

