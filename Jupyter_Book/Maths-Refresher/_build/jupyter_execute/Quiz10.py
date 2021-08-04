#!/usr/bin/env python
# coding: utf-8

# # Quiz 10: More complex questions
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

# ### More complex differentiation

# **Question 1**: Calculate $\frac{d}{dx} log(x^2)$
# 
# Choose the correct answer:
# 
# 1. $\frac{2x}{log(x^2)}$
# 2. $2 x^{-2}$ 
# 3. $2 x^{-1}$
# 4. $2 log(x^2)$

# In[2]:


display(qs10["Q10_1"])


# **Question 2**: Calculate $\frac{d}{dx} x log(x)$
# 
# 
# Choose the correct answer:
# 
# 1. $1 + log(x)$
# 2. $\frac{x}{log(x)}$
# 3. $log(x)+x$
# 4. $log(x^2)$

# In[3]:


display(qs10["Q10_2"])


# **Question 3**: Calculate $\frac{d}{dx} \frac{x}{log(x)}$
# 
# Choose the correct answer:
# 
# 1. $-\frac{x}{(log(x))^2}$
# 2. $\frac{1}{(x log(x))^2}$
# 3. $\frac{log(x) (1 - log(x))}{x^2}$
# 4. $\frac{1}{log(x)} - \frac{1}{(log(x))^2}$

# In[4]:


display(qs10["Q10_3"])


# **Question 4**: Calculate $\frac{d}{d\beta} \sum_{i=1}^n log(\beta x_i + 2 x+i^2)$
# 
# Choose the correct answer:
# 
# 1. $\frac{1}{\sum_{i=1}^n \beta x_i + 2 x+i^2}$
# 2. $\sum_{i=1}^n \frac{x_i}{\beta x_i + 2 x+i^2}$
# 3. $\sum_{i=1}^n \frac{x_i}{log(\beta x_i + 2 x+i^2)}$
# 4. $\frac{x_i}{\beta x_i + 2 x+i^2}$

# In[5]:


display(qs10["Q10_4"])


# **Question 5**: Calculate $\frac{d}{d\sigma} \sigma log(\sigma^2)$
# 
# Choose the correct answer:
# 
# 1. $2 + log(\sigma^2)$
# 2. $\frac{\sigma}{log(\sigma^2)} + \sigma log(\sigma^2)$
# 3. $log(\sigma^2)$
# 4. $log(\sigma^2) + \frac{2\sigma}{log(\sigma^2)}$

# In[6]:


display(qs10["Q10_5"])


# **Question 6**: Calculate $\frac{d}{d\theta} \frac{\theta}{1 + e^\theta}$
# 
# Choose the correct answer:
# 
# 1. $\frac{1}{1 + e^\theta}\left( 1 - \frac{1}{1 + e^\theta}\right)$
# 2. $\frac{1}{1 + e^\theta}\times \frac{e^\theta}{1 + e^\theta}$
# 3. $\frac{1}{1 + e^\theta}  - \frac{\theta e^\theta}{1 + e^\theta}$
# 4. $\frac{e^\theta}{1 + e^\theta}  - \frac{\theta e^\theta}{1 + e^\theta}$

# In[7]:


display(qs10["Q10_6"])


# ### More complex integration

# **Question 7**: Calculate $\int \frac{2x + 3}{x^2 + 3x - 5} dx$
# 
# Choose the correct answer:
# 
# 1. $log(x^2 + 3x - 5) + c$
# 2. $\frac{1}{x^2 + 3x - 5} + c$
# 3. $\frac{log(x^2 + 3x - 5)}{x^2 + 3x - 5} + c$
# 4. $\frac{2x^3 + 3x}{x^2 + 3x - 5} + c$

# In[8]:


display(qs10["Q10_7"])


# **Question 8**: Calculate $\int \frac{ln(x)}{x} dx$
# 
# Choose the correct answer:
# 
# 1. $\frac{x}{ln(x)} + c$
# 2. $\frac{1}{2} ln(x)^2 + c$
# 3. $\frac{ln(x)^2}{x} + c$
# 4. $\frac{1}{x ln(x)} + c$

# In[9]:


display(qs10["Q10_8"])


# **Question 9**: Calculate $\int x^2 e^{3x} dx$
# 
# Choose the correct answer:
# 
# 1. $e^{3x} (x^3 + 2 x^2 + x)$
# 2. $\frac{e^{3x}}{9}(x^2 + 2 x + \frac{1}{3})$
# 3. $e^{3x} (x^2 + \frac{2}{3} x + \frac{2}{3})$
# 4. $\frac{e^{3x}}{3}(x^2 + \frac{2}{3} x + \frac{2}{9})$

# In[10]:


display(qs10["Q10_9"])


# **Question 10**: Calculate $\int_0^1 x \alpha x^{\alpha-1} dx$
# 
# Choose the correct answer:
# 
# 1. $\alpha$
# 2. $\frac{\alpha}{\alpha + 1}$
# 3. $\frac{\alpha}{\alpha - 1}$
# 4. $\frac{\alpha(1-\alpha)}{\alpha^2}$

# In[11]:


display(qs10["Q10_10"])


# **Question 11**: Calculate $\int_0^\infty t \lambda e^{-\lambda t} dt$
# 
# Choose the correct answer:
# 
# 1. $e^{-\lambda}$
# 2. $\lambda$
# 3. $\frac{e^{-\lambda}}{\lambda}$
# 4. $\frac{1}{\lambda}$

# In[12]:


display(qs10["Q10_11"])


# ### Logarithms

# **Question 12**: The geometric mean is defined as follows: 
# 
# $$
# \tilde{x} = \ _n\sqrt{x_1 \times x_2 \times ... \times x_n} = \left(\prod_{i=1}^n x_i\right)^{1/n}
# $$
# 
# Suppose we have data $y_1$, $y_2$, ..., $y_n$, and we know that $y_i = ln(x_i)$.   
# 
# Write the arithmetic mean of the data, $\bar{y}$, in terms of $\tilde{x}$.
# 
# Choose the correct answer:
# 
# 1. $\bar{y} = \tilde{x}$
# 2. $\bar{y} = e^\tilde{x}$
# 3. $\bar{y} = log(\tilde{x})$
# 4. $e^\bar{y} = e^\tilde{x}$

# In[13]:


display(qs10["Q10_12"])


# **Question 13**: Suppose that $y(x) = a + b x$. Then $y(x+1) - y(x) = b$. In other words, $b$ is the change in $y$ for a unit increase in $x$.
# 
# What can we say about $b$ when $log( y(x) )= a + b x$?
# 
# Choose one:
# 
# 1. $b$ is the multiplicative increase in $y$ for a unit increase in $x$
# 2. $e^b$ is the multiplicative increase in $y$ for a unit increase in $x$
# 3. $b$ is the additive increase in $y$ for a unit increase in $x$
# 4. $2^b$ is the additive increase in $y$ for a unit increase in $x$
# 

# In[14]:


display(qs10["Q10_13"])


# ## Putting it all together: Finding a maximum likelihood estimator

# **Question 14**: You will learn the theory behind this method later. For now, we will undertake the mechanics of the calculation. 
# 
# We have data $X_1, X_2, ...X_n$, where each $X_i \sim N(5, \sigma^2)$. 
#     
# We are going to find the maximum likelihood estimate for $\sigma^2$. During the calculations, keep everything in terms of $\sigma^2$, not $\sigma$. If you have problems doing this, you can always substitute $u=\sigma^2$, and substitute back at the end.
# 
# 
# The likelihood for the data is:
# 
# $$
# L(\sigma^2) = \prod_{i=1}^n \frac{1}{\sqrt{2 \pi \sigma^2}} e^{-\frac{(x-5)^2}{2 \sigma^2}}
# $$
# 
# Using the skills you have been re-learning in this book, your task is to find the value of $\sigma^2$ which maximises this likelihood. 
# 
# <br>
# 
# Hints:  
# - Take the natural log to get the log-likelihood, $l(\sigma^2) = L(\sigma^2)$
# - Differentiate the log-likelihood with respect to $\sigma^2$
# - Solve $l'(\sigma^2) = 0$ to find the maximum. 
# 
# 
# 
# What is the maximum likelihood estimate for $\sigma^2$?
# 
# 1. $\hat{\sigma}^2 = \frac{1}{n}\sum_{i=1}^n \frac{(x - 5)}{\sqrt{2 \pi}}$
# 2. $\hat{\sigma}^2 = \frac{1}{\sqrt{2 \pi n}}\sum_{i=1}^n (x - 5)^2$
# 3. $\hat{\sigma}^2 = \frac{1}{n}\sum_{i=1}^n (x - 5)^2$
# 4. $\hat{\sigma}^2 = (\bar{x} - 5)^2$
# 

# In[15]:


display(qs10["Q10_14"])

