#!/usr/bin/env python
# coding: utf-8

# # Quiz 9: Correlation and covariance
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
# This quiz tests materials in the section called "Correlation and covariance". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# Suppose that $X$ and $Y$ are continuous random variables, with $Var(X)=1, Var(Y)=4, Cov(X,Y)=2$. 

# **Question 1**: Calculate $Cov(3X, 2Y)$
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $12$
# 3. $1$
# 4. $-12$

# In[2]:


display(qs9["Q9_1"])


# **Question 2**: Calculate $Cov(X+Y, 2X-3Y)$
# 
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $12$
# 3. $1$
# 4. $-12$

# In[3]:


display(qs9["Q9_2"])


# **Question 3**: Calculate $Corr(3X, 2Y)$
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $12$
# 3. $1$
# 4. $-12$

# In[4]:


display(qs9["Q9_3"])


# **Question 4**: Suppose $X$ and $Y$ are continuous random variables with the same variance, $\sigma^2$.
# 
# Define $A = X-Y$ and $B = X +Y$.
# 
# What is $Corr(A, B)$?
# 
# 
# Choose the correct answer:
# 
# 1. $0$
# 2. $12$
# 3. $1$
# 4. $-12$

# In[5]:


display(qs9["Q9_4"])

