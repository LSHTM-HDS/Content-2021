#!/usr/bin/env python
# coding: utf-8

# # Quiz 3: Matrices
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
# This quiz tests materials in the section called "Matrices". If you are struggling with the questions go back and re-read the relevant material.
# 

# Each question is initially set to a default value. Choose the correct value and press submit.

# Define $A= \begin{pmatrix}1&4 \\ 5&1 \\ 2&3\end{pmatrix}$

# **Question 1**: What is the order of $A$? 
# 
# Choose the correct answer:
# 
# 1. $3$
# 2. $3 \times 2$
# 3. $2 \times 3$
# 4. $6$

# In[2]:


display(qs3["Q3_1"])


# **Question 2**: What is the transpose of A?
# 
# Choose the correct answer:
# 
# 1. $\begin{pmatrix} 1 &4 &5 \\2 &1 &3 \end{pmatrix}$
# 2. The transpose is undefined.
# 3. $\begin{pmatrix} 1 &5 &2 \end{pmatrix}$ and $\begin{pmatrix} 4 &1 &3 \end{pmatrix}$ 
# 4. $\begin{pmatrix} 1 &5 &2 \\ 4 &1 &3 \end{pmatrix}$ 

# In[3]:


display(qs3["Q3_2"])


# **Question 3**: Re-write A as a partitioned matrix formed of two column vectors.
# 
# Choose the correct solution:
# 
# 1. $A = \begin{pmatrix} a_1 &a_2 \end{pmatrix}$ where $a_1  = \begin{pmatrix} 1 &5 &2 \end{pmatrix}'$ and $a_2  = \begin{pmatrix} 4 &1 &3 \end{pmatrix}'$
# 2. $A = \begin{pmatrix} a_1 \\ a_2 \end{pmatrix}$ where $a_1  = \begin{pmatrix} 1 &5 &2 \end{pmatrix}$ and $a_2  = \begin{pmatrix} 4 &1 &3 \end{pmatrix}$
# 3. Partitioning is only defined for square matrices.
# 4. Partitioning requires the matrix to be split into four sub-matrices.

# In[4]:


display(qs3["Q3_3"])


# Define $B= \begin{pmatrix} 4&2 &1 \\ 3&6 &3 \\ 2&5 &5\end{pmatrix}$ 

# **Question 4**: What is the main diagonal of B as a column vector?
# 
# Choose the correct answer:
# 
# 1. $\begin{pmatrix} 4 &3 &2 \end{pmatrix}$
# 2. $\begin{pmatrix} 4 &6 &5 \end{pmatrix}$
# 3. $\begin{pmatrix} 4 &2 &1 \end{pmatrix}'$
# 4. $\begin{pmatrix} 4 &6 &5 \end{pmatrix}'$

# In[5]:


display(qs3["Q3_4"])


# **Question 5**: Calculate the trace of B.
# 
# 
# Choose the correct answer:
# 
# 1. $tr(B) = 16$
# 2. $tr(B) = \begin{pmatrix} 4 &6 &5 \end{pmatrix}$
# 3. $tr(B) = 15$
# 4. $tr(B) = \begin{pmatrix} 4 &6 &5 \end{pmatrix}'$

# In[6]:


display(qs3["Q3_5"])


# Define $C= \begin{pmatrix} 2 &4 \\ 3 &1 \\ 6 &0\end{pmatrix}$ 

# **Question 6**: Calculate 
# 
# (i) $A+C$  (ii) $A-C$ (iii) $(A+C)^T$ (iv) $A^T + C^T$
# 
# Choose the correct answer:
# 
# 1. $A+C=\begin{pmatrix} 3&8\\8&2\\8&3\end{pmatrix}, \ \ A-C =\begin{pmatrix} -1&0\\2&0\\-4&3\end{pmatrix}, \ \ (A+C)^T=\begin{pmatrix} 3&8&8\\8&2&3\end{pmatrix}, \ \ A^T + C^T=\begin{pmatrix} 3&8\\8&2\\8&3\end{pmatrix}$ 
# 2. $A+C=\begin{pmatrix} 3&8\\8&2\\8&3\end{pmatrix}, \ \ A-C =\begin{pmatrix} -1&0\\2&0\\4&3\end{pmatrix}, \ \ (A+C)^T=\begin{pmatrix} 3&8&8\\8&2&3\end{pmatrix}, \ \ A^T + C^T=\begin{pmatrix} 3&8&8\\8&2&3\end{pmatrix}$ 
# 3. $A+C=\begin{pmatrix} 3&8\\8&2\\8&3\end{pmatrix}, \ \ A-C =\begin{pmatrix} -1&0\\2&0\\-4&3\end{pmatrix}, \ \ (A+C)^T=\begin{pmatrix} 3&8&8\\8&2&3\end{pmatrix}, \ \ A^T + C^T=\begin{pmatrix} 3&8&8\\8&2&3\end{pmatrix}$ 
# 4. $A+C=\begin{pmatrix} 3&8\\8&2\\8&2\end{pmatrix}, \ \ A-C =\begin{pmatrix} -1&0\\2&0\\-4&3\end{pmatrix}, \ \ (A+C)^T=\begin{pmatrix} 3&8&8\\8&2&2\end{pmatrix}, \ \ A^T + C^T=\begin{pmatrix} 3&8\\8&2\\8&2\end{pmatrix}$

# In[7]:


display(qs3["Q3_6"])


# **Question 7**: What is (a) $2A$, and (b) $-1((A-C)3)$?
# 
# Choose the correct answer:
# 
# 1. $2A = \begin{pmatrix} 2 &8 \\ 10&2 \\ 4&6\end{pmatrix}$ and $-1((A-C)3) = \begin{pmatrix} 3&0\\-6&0\\12&-9\end{pmatrix}$
# 2. $2A = \begin{pmatrix} 1&16\\25&1\\4&9\end{pmatrix}$ and $-1((A-C)3) = \begin{pmatrix} 3&0\\-6&0\\12&-6\end{pmatrix}$
# 3. $2A = \begin{pmatrix} 2 &8 \\ 10&2 \\ 4&6\end{pmatrix}$ and $-1((A-C)3) = \begin{pmatrix}3&0\\6&0\\12&-9\end{pmatrix}$
# 4. $2A = \begin{pmatrix} 1&16\\25&1\\4&9\end{pmatrix}$ and $-1((A-C)3) = \begin{pmatrix} 3&0\\-6&1\\12&-9\end{pmatrix}$

# In[8]:


display(qs3["Q3_7"])


# Define $D= \begin{pmatrix} 3 \\ -1 \end{pmatrix}$. And we have defined $A= \begin{pmatrix} 1&4\\5&1\\2&3 \end{pmatrix}$ above.

# **Question 8**: What is the order of the matrix $AD$? 
# 
# Choose the correct answer:
# 
# 1. $3$
# 2. $1 \times 3$
# 3. $2 \times 3$
# 4. $3 \times 1$

# In[9]:


display(qs3["Q3_8"])


# **Question 9**: Calculate $AD$.
# 
# Choose the correct answer:
# 
# 1. $AD = \begin{pmatrix} -1 \\ 14 \\ 3 \end{pmatrix}^T$ 
# 2. $AD = \begin{pmatrix} -1 \\ 14 \\ 3 \end{pmatrix}$
# 3. $AD = \begin{pmatrix} -1 \\ 14 \\ -3 \end{pmatrix}$
# 4. None of the above

# In[10]:


display(qs3["Q3_9"])


# Remember that $A= \begin{pmatrix}1&4\\5&1\\2&3\end{pmatrix}$  and $B= \begin{pmatrix} 4&2 &1\\3&6 &3\\2&5 &5\end{pmatrix}$ 

# **Question 10**: What is the order of the matrix $BA$?
# 
# Choose the correct solution:
# 
# 1. $3 \times 2$ 
# 2. $3 \times 3$
# 3. $2 \times 6$
# 4. $2 \times 3$

# In[11]:


display(qs3["Q3_10"])


# **Question 11**: Calculate $BA$ and $AB$.
# 
#     
# Choose the correct solution:
# 
# 1. $AB = \begin{pmatrix}16 &21 \\ 39&27 \\ 37 &28\end{pmatrix}$ and $BA = \begin{pmatrix}16 &21 \\ 39&27 \\ 37 &28\end{pmatrix}$
# 2. $AB$ is undefined. $BA = \begin{pmatrix}16 &21 \\ 39&27 \\ 37 &28\end{pmatrix}$
# 3. $BA$ is undefined. $AB = \begin{pmatrix}16 &21 \\ 39&27 \\ 37 &28\end{pmatrix}$
# 4. $BA$ and $AB$ are both undefined. 

# In[12]:


display(qs3["Q3_11"])


# Define $E= \begin{pmatrix} 2 &1 \\ -3 &0 \end{pmatrix}$

# **Question 12**: Calculate the determinant of $E$.
# 
# Choose the correct solution:
# 
# 1. -3
# 2. It is undefined - $E$ is a singular matrix.   
# 3. 3
# 4. 9 

# In[13]:


display(qs3["Q3_12"])


# **Question 13**: Calculate the inverse of $E$.
# 
# Check your calculation by calculating $E E^{-1}$. 
# 
# Choose the correct solution:
# 
# 1. $E^{-1} = \begin{pmatrix} 0 &-1/3 \\ 1&2/3\end{pmatrix}$ 
# 2. $E^{-1} = \begin{pmatrix} 0 &1 \\ -1/3&2/3\end{pmatrix}$ 
# 3. $E^{-1} = \begin{pmatrix} 0 &1/3 \\ -1&2/3\end{pmatrix}$ 
# 4. $E^{-1} = \begin{pmatrix}  0 &-1 \\ 1/3&2/3\end{pmatrix}$  

# In[14]:


display(qs3["Q3_13"])


# **Question 14**: Is $E$ (a) idempotent? and (b) orthogonal?
# 
# Choose the correct solution:
# 
# 1. $E$ is idempotent but not orthogonal.
# 2. $E$ is both idempotent and orthogonal.
# 3. $E$ is not idempotent but it is orthogonal.
# 4. $E$ is neither idempotent nor orthogonal.

# In[15]:


display(qs3["Q3_14"])

