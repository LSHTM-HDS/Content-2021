#!/usr/bin/env python
# coding: utf-8

# # Quiz 4: Combinatorics
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
# This quiz tests materials in the section called "Combinatorics". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# **Question 1**: If everyone had only two names, a first name and a family name, how many pairs of initials would
# be possible?
# 
# Choose the correct answer:
# 
# 1. $26 \times 26$
# 2. $26 \times 26 - 2\times 26$
# 3. $2 \times 26$
# 4. $26 \times 25$

# In[2]:


display(qs4["Q4_1"])


# **Question 2**: Eva is choosing a new bank pin code. The rules for pin codes for her bank are as follows:
# 
# - A pin code must have 4 digits. 
# - No digit can be repeated in the pin code. 
# 
# What is the number of possible pin codes that Eva could choose? 
# 
# Choose the correct answer:
# 
# 1. $1 \times 2 \times 3 \times 4 \times 5 \times ... \times 9$
# 2. $9!$
# 3. $10!$
# 4. $10 \times 9 \times 8 \times 7$

# In[3]:


display(qs4["Q4_2"])


# **Question 3**: A football league of MSc students at the LSHTM contains 8 teams. How many matches need to
# be played in order that each team plays once against every other team?
# 
# Choose the correct answer:
# 
# 1. $^8 C_2 = \frac{8!}{2! 6!}$
# 2. $\frac{8 \times 7}{2}$
# 3. Both options above.
# 4. Neither option above.

# In[4]:


display(qs4["Q4_3"])


# **Question 4**: A MSc group contains 9 males and 11 females. In how many ways can a committee of two males
# and two females be formed from the class?
# 
# Choose the correct solution:
# 
# 1. $1970$
# 2. $1960$
# 3. $1980$
# 4. $1990$

# In[5]:


display(qs4["Q4_4"])


# **Question 5**: A group of 6 male doctors and 6 female doctors is randomly divided into two groups of size 6
# each. What is the probability that both groups will have the same number of men?
# 
# Choose the correct answer:
# 
# 1. $^6 C_{12}$
# 2. $\frac{12!}{6!}$
# 3. $\frac{6!}{12! 12!}$
# 4. $\frac{400}{924}$

# In[6]:


display(qs4["Q4_5"])

