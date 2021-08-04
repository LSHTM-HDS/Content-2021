#!/usr/bin/env python
# coding: utf-8

# # Quiz 8: Continuous Random Variables
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
# This quiz tests materials in the section called "Continuous random variables". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# Suppose that a continuous random variable $X$ has a probability density function of the form:
# 
# $$
# f(x) = \frac{x^3}{10} - \frac{x}{20} + \frac{7}{20} \qquad 0 \leq x \leq 2; \ \ \  0 \mbox{ otherwise}
# $$

# **Question 1**: Calculate the cumulative density function, $F(x)$
# 
# Choose the correct answer:
# 
# 1. $F(x) = \frac{x^2}{20} - \frac{1}{20} - \frac{7x^{-1}}{20}$
# 2. $F(x) = \frac{4 x^4}{10} - \frac{2 x^2}{20} + \frac{7x}{20}$
# 3. $F(x) = \frac{x^4}{40} - \frac{x^2}{40} + \frac{7x}{20}$
# 4. $F(x) = \frac{3 x^2}{10} - \frac{1}{20}$
# 
# [Hint: as a check, what value should F(0) and F(2) take?]

# In[2]:


display(qs8["Q8_1"])


# **Question 2**: Calculate $E(X)$
# 
# Choose the correct answer:
# 
# 1. $0.344$ (3 d.p.)
# 2. $1.8$
# 3. $1.207$ (3 d.p.)
# 4. $1.52$

# In[3]:


display(qs8["Q8_2"])


# **Question 3**: Calculate $E(X^2)$
# 
# Choose the correct answer:
# 
# 1. $0.344$ (3 d.p.)
# 2. $1.8$
# 3. $1.207$ (3 d.p.)
# 4. $1.52$

# In[4]:


display(qs8["Q8_3"])


# **Question 4**: Calculate $Var(X)$.
# 
# Choose the correct answer:
# 
# 1. $0.344$ (3 d.p.)
# 2. $1.8$
# 3. $1.207$ (3 d.p.)
# 4. $1.52$

# In[5]:


display(qs8["Q8_4"])


# The random variables $X$ and $Y$ have joint density function
# 
# $$
# f(x, y) = 12xy(1 - x),\qquad \mbox{if  } 0 < x < 1 \mbox{ and }  0 < y < 1; \ \ \ 0 \mbox{ otherwise}
# $$

# **Question 5**: What is the marginal density of $Y$? 
# 
# Choose the correct answer:
# 
# 1. $2y$
# 2. $6y(1-y)$
# 3. $6x(1-x)$
# 4. $2x$
# 

# In[6]:


display(qs8["Q8_5"])


# **Question 6**: The marginal density of $X$ is $f(x)=6x(1 - x)$. Are $X$ and $Y$ independent?
# 
# Choose the correct answer:
# 
# 1. We do not have sufficient data to tell
# 2. Yes
# 3. No
# 4. No, because $X$ and $Y$ are continuous variables.

# In[7]:


display(qs8["Q8_6"])

