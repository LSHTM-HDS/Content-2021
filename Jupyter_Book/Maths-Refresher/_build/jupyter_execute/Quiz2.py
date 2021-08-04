#!/usr/bin/env python
# coding: utf-8

# # Quiz 2: Differentiation and integration
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
# This quiz tests materials in the section called "Differentiation and Integration". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# ###  Differentiation
# 
# The first part contains questions on differentiation

# **Question 1**: Differentiate the function $f(x) = x^3$. 
# 
# 1. $3 x^3$
# 2. $x^3$
# 3. $3 x^2$
# 4. $\frac{x^4}{4}$

# In[2]:


display(qs2["Q2_1"])


# **Question 2**: Differentiate the function $f(x) = x^{-7}$. 
# 
# 1. $-7 x^{-8}$
# 2. $\frac{x^{-9}}{9}$
# 3. $\frac{-8}{x^8}$
# 4. $\frac{7 \times 8 x}{x^8}$

# In[3]:


display(qs2["Q2_2"])


# **Question 3**: Differentiate the function $f(x) = \sqrt{1+x^2}$. 
# 
# 1. $\frac{2x}{(1 + x^2)^{1/2}}$
# 2. $\frac{x (1 + x)^{-1/2}}{2}$
# 3. $\{x (1+x^2)\}^{-1/2}$
# 4. $\frac{x}{\sqrt{1 + x^2}}$

# In[4]:


display(qs2["Q2_3"])


# **Question 4**: Differentiate the function $f(x) = \frac{1}{log_e(x)}$. 
# 
# 1. $\frac{x}{log_e(x)}$
# 2. $\frac{-1}{x(log_e(x))^2}$
# 3. $\frac{-x}{(log_e(x))^2}$
# 4. $\frac{-1}{(x log_e(x))^2}$

# In[5]:


display(qs2["Q2_4"])


# **Question 5**: Differentiate the function $f(x) = exp(4x)$. 
# 
# 1. $4x \, exp(4x)$
# 2. $4 e^{4x}$
# 3. $16 \, exp(3x)$
# 4. $4 e^{3x}$

# In[6]:


display(qs2["Q2_5"])


# **Question 6**: Differentiate the function $f(x) = \frac{(1 + x)}{x^2}$. 
# 
# 1. $-\frac{2(1+x)}{x^3}$
# 2. $\frac{1}{x^2}$
# 3. $-\frac{(2+x)}{x^3}$
# 4. $\frac{(2+x)}{x^3}$

# In[7]:


display(qs2["Q2_6"])


# **Question 7**: Differentiate the function $f(x) = e^{3x^2}$. 
# 
# 1. $3x^2 exp(3 x^2)$
# 2. $e^{6x}$
# 3. $3x^2 \times 6x \times  e^{3 x^2}$
# 4. $6x e^{3x^2}$

# In[8]:


display(qs2["Q2_7"])


# **Question 8**: Define 
# 
# $$L = -\frac{(x - \mu)^2}{s} - \log(s)$$ 
# 
# Find
# $\frac{\partial L}{\partial s}$, 
# $\frac{\partial L}{\partial \mu}$, 
# $\frac{\partial^2 L}{\partial s^2}$, 
# $\frac{\partial^2 L}{\partial \mu^2}$, 
# $\frac{\partial^2 L}{\partial s \partial \mu}$, 
# $\frac{\partial^2 L}{\partial \mu \partial s}$.
# 
# Which of the following are correct? 
# 
# 1. $\frac{\partial^2 L}{\partial s^2} = \frac{2(x-\mu)^2}{s^3}  + \frac{1}{s^2}, \ \  \qquad \frac{\partial^2 L}{\partial \mu^2} = \frac{-2}{s^2}, \qquad \frac{\partial^2 L}{\partial s \partial \mu} = \frac{-2(x-\mu)}{s^2}$
# 2. $\frac{\partial^2 L}{\partial s^2} = \frac{-2(x-\mu)^2}{s^3}  - \frac{1}{s^2}, \qquad \frac{\partial^2 L}{\partial \mu^2} = \frac{2}{s}, \qquad \frac{\partial^2 L}{\partial s \partial \mu} = \frac{2(x-\mu)}{s^2}$
# 3. $\frac{\partial^2 L}{\partial s^2} = \frac{-2(x-\mu)^2}{s^3} + \frac{1}{s^2}, \qquad \frac{\partial^2 L}{\partial \mu^2} = \frac{-2}{s}, \qquad \frac{\partial^2 L}{\partial s \partial \mu} = \frac{-2(x-\mu)}{s^2}$
# 4. $\frac{\partial^2 L}{\partial s^2} = \frac{-2(x-\mu)^2}{s^3}  - \frac{1}{s^2}, \qquad \frac{\partial^2 L}{\partial \mu^2} = \frac{-2}{s}, \qquad \frac{\partial^2 L}{\partial s \partial \mu} = \frac{-2(x-\mu)^2}{s^2}$

# In[9]:


display(qs2["Q2_8"])


# ###  Integration
# 
# The next part contains questions on integration.

# **Question 9**: Perform the integration 
# 
# $$\int 3 x^4 dx$$
# 
# Choose the correct solution:
# 
# 1. $\frac{3 x^4}{5} + c$ 
# 2. $\frac{3 x^5}{5} + c$
# 3. $x^3 + c$
# 4. $\frac{3 x^3}{4} + c$
# 
# where $c$ is a constant.

# In[10]:


display(qs2["Q2_9"])


# **Question 10**: Perform the integration 
# 
# $$\int \frac{1}{x} dx$$
# 
# Choose the correct solution:
# 
# 1. $-\frac{1}{x^2} + c$ 
# 2. $x log_e(x) + c$
# 3. $log_e\left( \frac{1}{x} \right) + x$
# 4. $log_e(x) + c$
# 
# where $c$ is a constant.

# In[11]:


display(qs2["Q2_10"])


# **Question 11**: Perform the integration 
# 
# $$\int \frac{x}{x^2-4} dx$$
#     
# Choose the correct solution:
# 
# 1. $\frac{1}{2} log(x^2+4) + c$ 
# 2. $log( \sqrt{x^2+4}) + c$
# 3. $\frac{1}{2}  log((x-2)(x+2)) + c$
# 4. All of the above
# 
# where $c$ is a constant.

# In[12]:


display(qs2["Q2_11"])


# **Question 12**: Find the area under the curve for the following function:
# 
# $$y = x^2$$
# 
# a) between $x = 0$ and $x = 3$, and b) between $x = -3$ and $x = -0$
# 
# Choose the correct option:
# 
# 1. a) $9$ and b) $9$ 
# 2. a) $9$ and b) $0$  
# 3. a) $9$ and b) $-9$ 
# 4. a) $3$ and b) $-3$ 

# In[13]:


display(qs2["Q2_12"])


# **Question 13**: Find the area under the curve for the following function:
# 
# $$y = x^3  – 3x$$
# 
# a) between $x = 0$ and $x = 3$, and b) between $x = -2$ and $x = 2$
# 
# Choose the correct option:
# 
# 1. a) $\frac{3^3}{4}$ and b) $0$ 
# 2. a) $\frac{9}{4}$ and b) $4$  
# 3. a) $6.75$ and b) $-8$ 
# 4. a) $6.75$ and b) $0$ 

# In[14]:


display(qs2["Q2_13"])

