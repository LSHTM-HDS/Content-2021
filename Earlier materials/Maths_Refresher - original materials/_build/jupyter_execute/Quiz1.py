#!/usr/bin/env python
# coding: utf-8

# # Quiz 1: Powers and logs
# 

# If you wish, you can do a self grading version of the quiz below. In order to open the interactive version of the notebook, you need to open it in Binder. To do this, hover your mouse over the rocket symbol (near the top right of the page) and click on the word "Binder" which should appear. This will load an interactive quiz. The first time you load this it may take a few minutes. 

# ##  Preamble
# 
# If running in interactive mode, before attempting the questions below you need to run the whole notebook (click "Cell" from the dropdown menus and then choose "Run All"). 
# 
# The code below installs the required packages, loads up the solutions and the multiple choice question function to display the interactive questions below (if running in interactive mode).

# In[1]:


get_ipython().run_cell_magic('capture', '', '%run ./Solutions.ipynb ')


# ## Quiz
# 
# This quiz tests materials in the section called "Functions, exponential and logarithm rules". If you are struggling with the questions go back and re-read the relevant material.

# Each question is initially set to a default value. Choose the correct value and press submit.

# **Question 1**:  What is $a^0$? 
# 
# 1. $0$
# 2. $1$
# 3. $a$
# 4. None of the above

# In[2]:


display(qs1["Q1_1"])


# **Question 2**: What is $3^2$?
#     
# 1. $6$
# 2. $8$
# 3. $9$
# 4. None of the above

# In[3]:


display(qs1["Q1_2"])


# **Question 3**: What is $1^3$?
#     
# 1. $1$
# 2. $3$
# 3. $\frac{1}{3}$
# 4. None of the above

# In[4]:


display(qs1["Q1_3"])


# **Question 4**: What is $2^{-3}$?
# 
# 1. $-6$
# 2. $\frac{1}{8}$
# 3. $-9$
# 4. None of the above

# In[5]:


display(qs1["Q1_4"])


# **Question 5**: What is $\frac{4^3}{4^5}$?
# 
# 1. $4^8$
# 2. $4^{-8}$
# 3. $16^{-1}$
# 4. None of the above

# In[6]:


display(qs1["Q1_5"])


# **Question 6**: What is $\left(3^{-3}\right)^3$?
# 
# 1. $1$
# 2. $3^{-9}$
# 3. $3^{-27}$
# 4. None of the above

# In[7]:


display(qs1["Q1_6"])


# **Question 7**: What is $\frac{5^2}{3^2}$?
# 
# 1. $\left(\frac{5}{3}\right)^2$
# 2. $\left(\frac{5}{3}\right)^{-2}$
# 3. $5^{-6}$
# 4. None of the above

# In[8]:


display(qs1["Q1_7"])


# **Question 8**: What is $4^3$?
# 
# 1. $12$
# 2. $16$
# 3. $2^6$
# 4. None of the above

# In[9]:


display(qs1["Q1_8"])


# **Question 9**: What is $27^{-2/3}$?
# 
# 1. $\frac{1}{18}$
# 2. $\frac{1}{81}$
# 3. $\frac{1}{9}$
# 4. None of the above

# In[10]:


display(qs1["Q1_9"])


# **Question 10**: What is $log_{10}(10^n)$?
# 
# 1. $10 n$
# 2. $n$
# 3. $10^n$
# 4. None of the above

# In[11]:


display(qs1["Q1_10"])


# **Question 11**: What is $log_{10}\left(\frac{10^4}{10^{-3}}\right)$?
# 
# 1. $10^7$
# 2. $1$
# 3. $10$
# 4. $7$

# In[12]:


display(qs1["Q1_11"])


# **Question 12**: What is $\frac{1}{2} log_{10}(16)$?
# 
# 1. $4$
# 2. $8$
# 3. $log_{10}(2)$
# 4. $log_{10}(4)$

# In[13]:


display(qs1["Q1_12"])


# **Question 13**: What is $log_{10} [log_{10}(10)]$?
# 
# 1. $10$
# 2. $1$
# 3. $0$
# 4. $-1$

# In[14]:


display(qs1["Q1_13"])


# **Question 14**: What is $\frac{log_{10}(1000)}{log_{10}(100)}$?
# 
# 1. $\frac{3}{2}$
# 2. $1$
# 3. $-1$
# 4. $10$

# In[15]:


display(qs1["Q1_14"])


# **Question 15**: Simplify the function 
# 
# $$ln \left( \prod_{i=1}^n p^{x_i} (1-p)^{y_i} \right)$$
# 
# Which of these can it be written as? 
# 
# 1. $\prod_i log(p^x_i) + \prod_i log(1 - p)^y_i$
# 2. $\sum_i x_i log(p) \times y_i log(1-p)$
# 3. $\left(\sum_i x_i\right) log(p) + \left(\sum_i y_i \right) log(1-p)$ 
# 4. None of the above

# In[16]:


display(qs1["Q1_15"])


# **Question 16**: Simplify the function 
# 
# $$ln \left( \prod_{i=1}^n \frac{e^{-\lambda}\lambda^{x_i}}{x_i!} \right)$$
# 
# Which of these can it be written as? 
# 
# 1. $-n \lambda + \sum_i x_i log(\lambda) - \sum_i log(x!)$
# 2. $\prod_i \lambda + \prod_i log(\lambda^x_i) + \prod_i log\left(\frac{1}{x_i!}\right)$
# 3. $\sum_i log(-\lambda) + \sum_i x_i log(\lambda) - \sum_i log(x!)$ 
# 4. None of the above

# In[17]:


display(qs1["Q1_16"])

