#!/usr/bin/env python
# coding: utf-8

# # Quiz 7: Discrete Random Variables
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
# This quiz tests materials in the section called "Discrete random variables". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# A variable $Z$ has the following distribution:
# 
# | $z$  |  P(Z=$z$) |
# |---- | ---- |
# | 1 | 0.3 |
# | 2 | 0.2 |
# | 3 | 0.4 |
# | 4 | 0.1 |
# 

# **Question 1**: Calculate $E(Z)$
# 
# Choose the correct answer:
# 
# 1. $6.3$
# 2. $1.01$
# 3. $2.3$
# 4. $1.5$

# In[2]:


display(qs7["Q7_1"])


# **Question 2**: Calculate $E(Z^2)$
# 
# Choose the correct answer:
# 
# 1. $6.3$
# 2. $1.01$
# 3. $2.3$
# 4. $1.5$

# In[3]:


display(qs7["Q7_2"])


# **Question 3**: Calculate $Var(Z)$
# 
# Choose the correct answer:
# 
# 1. $6.3$
# 2. $1.01$
# 3. $2.3$
# 4. $1.5$

# In[4]:


display(qs7["Q7_3"])


# Let $X$ be a discrete random variable with $E(X) = 1$ and $Var(X) = 5$.  

# **Question 4**: What is $E(2 + 3X)$?
# 
# Choose the correct answer:
# 
# 1. $6$
# 2. $10$
# 3. $45$
# 4. $5$

# In[5]:


display(qs7["Q7_4"])


# **Question 5**: What is $E((2 + X)2)$?
# 
# Choose the correct answer:
# 
# 1. $6$
# 2. $10$
# 3. $45$
# 4. $5$

# In[6]:


display(qs7["Q7_5"])


# **Question 6**: What is  $Var(10 + 3X)$?
# 
# Choose the correct answer:
# 
# 1. $6$
# 2. $10$
# 3. $45$
# 4. $5$

# In[7]:


display(qs7["Q7_6"])


# Let $Y$ be a discrete random variable with $E(Y) = 4$ and $Var(Y) = 2$. Remember, $E(X) = 1$ and $Var(X) = 5$ as above.

# **Question 7**: What is $E(21X - 4Y)$?
# 
# Choose the correct solution:
# 
# 1. $6$
# 2. $10$
# 3. $45$
# 4. $5$

# In[8]:


display(qs7["Q7_7"])


# Let $Z_1$ and $Z_2$ be discrete random variables. Suppose that $Z_1$ and $Z_2$ are independent. 
# 
# $E(Z_1) = 3$ and $Var(Z_1) = 1$
# 
# $E(Z_2) = 5$ and $Var(Z_2) = 2$

# **Question 8**: What is $E(3 Z_1 - 2 Z_2 + 1)$? 
# 
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $25$
# 3. $17$
# 4. $2$

# In[9]:


display(qs7["Q7_8"])


# **Question 9**: What is $Var(3 Z_1 - 2 Z_2 + 1)$?
# 
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $25$
# 3. $17$
# 4. $2$

# In[10]:


display(qs7["Q7_9"])


# In a particular study, the percentage of the whole sample in groups defined by sex and smoking are shown below:
# 
# 
# | Sex  |  Current smoker | Former smoker | Never smoker |
# |---- | ---- |---- |---- |
# | Male | 10\% | 25\% | 15\% |
# | Female | 20\% | 20\% | 10\% |
# 

# **Question 10**: What is the probability that a randomly selected individual is a current smoker?
# 
# Choose the correct answer:
# 
# 1. $0.3$
# 2. $1/3$
# 3. $0.5$
# 4. $1/5$

# In[11]:


display(qs7["Q7_10"])


# **Question 11**: What is the probability that a randomly selected individual is male?
# 
# Choose the correct answer:
# 
# 1. $0.3$
# 2. $1/3$
# 3. $0.5$
# 4. $1/5$

# In[12]:


display(qs7["Q7_11"])


# **Question 12**: Suppose we randomly select from among the male participants of the study. What is the probability that the selected individual is a current smoker?
# 
# Choose the correct answer:
# 
# 1. $0.3$
# 2. $1/3$
# 3. $0.5$
# 4. $1/5$

# In[13]:


display(qs7["Q7_12"])


# **Question 13**: Suppose we randomly select from among the current smokers in the study. What is the probability that the selected individual is male?
# 
# Choose the correct answer:
# 
# 1. $0.3$
# 2. $1/3$
# 3. $0.5$
# 4. $1/5$

# In[14]:


display(qs7["Q7_13"])


# **Question 14**: Are sex and smoking status independent variables?
# 
# Choose the correct answer:
# 
# 1. Yes
# 2. No
# 3. We do not have sufficient data to say
# 4. No, because these events are not mutually exclusive

# In[15]:


display(qs7["Q7_14"])

