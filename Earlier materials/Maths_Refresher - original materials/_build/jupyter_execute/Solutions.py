#!/usr/bin/env python
# coding: utf-8

# # Solution to quizzes

# This script contains programs to create multiple choice questions. Subsequent script contains the solutions.

# ## Solutions to quiz 1: Functions, exponential and logarithm rules

# The correct answers are:
# 
# 1. 2
# 2. 3
# 3. 1
# 4. 2 
# 5. 3
# 6. 2
# 7. 1
# 8. 3
# 9. 3
# 10. 2
# 11. 4 
# 12. 4 
# 13. 3 
# 14. 1 
# 15. 3 
# 16. 1

# ## Solutions to quiz 2: Differentiation and Integration

# The correct answers are:
# 
# 1. 3
# 2. 1 
# 3. 4 
# 4. 2 
# 5. 2  
# 6. 3 
# 7. 4 
# 8. 3 
# 9. 2 
# 10. 4
# 11. 3
# 12. 1
# 13. 1

# ## Solutions to quiz 3: Matrices

# The correct answers are:
# 
# 1. 2
# 2. 4
# 3. 1
# 4. 2
# 5. 3
# 6. 3
# 7. 1
# 8. 4
# 9. 2
# 10. 1 
# 11. 2 
# 12. 3
# 13. 1
# 14. 4

# ## Solutions to quiz 4: Combinatorics

# The correct answers are:
# 
# 1. 1
# 2. 4
# 3. 3 
# 4. 3 
# 5. 4

# ## Solutions to quiz 5: Probability

# The correct answers are:
# 
# 1. 3
# 2. 4
# 3. 1
# 4. 3
# 5. 4
# 6. 2
# 7. 1
# 8. 4
# 9. 2
# 10. 1 

# ## Solutions to quiz 6: Probability theorems

# The correct answers are:
# 
# 1. 2
# 2. 4
# 3. 1

# ## Solutions to quiz  7: Discrete random variables

# The correct answers are:
# 
# 1. 3 
# 2. 1 
# 3. 2
# 4. 4 
# 5. 1 
# 6. 3 
# 7. 4
# 8. 1 
# 9. 3  
# 10. 1
# 11. 3 
# 12. 4
# 13. 2 
# 14. 2

# ## Solutions to quiz 8: Continuous random variables

# The correct answers are:
# 
# 1. 3 
# 2. 3 
# 3. 2
# 4. 1 
# 5. 1 
# 6. 2 

# ## Solutions to quiz 9: Correlation and covariance

# The correct answers are:
# 
# 1. 2 
# 2. 4 
# 3. 3
# 4. 1  

# ## Solutions to quiz 10: More complex questions

# The correct answers are:
# 
# 1. 3 
# 2. 1
# 3. 4
# 4. 2 
# 5. 1 
# 6. 3 
# 7. 1 
# 8. 2 
# 9. 4 
# 10. 2
# 11. 4
# 12. 3
# 13. 2 
# 14. 3

# The following code allows the interactive version to self-grade automatically.

# In[1]:


get_ipython().system('pip install -U -q ipywidgets')
get_ipython().system('jupyter nbextension enable --py widgetsnbextension')


# In[2]:


import ipywidgets as widgets
import sys
from IPython.display import display
from IPython.display import clear_output


# In[3]:


def create_multipleChoice_widget(description, options, correct_answer):
    if correct_answer not in options:
        options.append(correct_answer)
    
    correct_answer_index = options.index(correct_answer)
    
    radio_options = [(words, i) for i, words in enumerate(options)]
    alternativ = widgets.RadioButtons(
        options = radio_options,
        description = '',
        disabled = False
    )
    
    description_out = widgets.Output()
    with description_out:
        print(description)
        
    feedback_out = widgets.Output()

    def check_selection(b):
        a = int(alternativ.value)
        if a==correct_answer_index:
            s = '\x1b[6;30;42m' + "Good work" + '\x1b[0m' +"\n" #green color
        else:
            s = '\x1b[5;30;41m' + "Try again" + '\x1b[0m' +"\n" #red color
        with feedback_out:
            clear_output()
            print(s)
        return
    
    check = widgets.Button(description="submit")
    check.on_click(check_selection)
    
    
    return widgets.VBox([description_out, alternativ, check, feedback_out])


# In[4]:


def mcq4(correct_answer):
    Q = create_multipleChoice_widget('Answer',[1,2,3,4],correct_answer)
    return Q


# Quiz 1: Functions and rules

# In[5]:


## Store answers in a dictionary
ans1 = {1:2, 2:3, 3:1, 4:2, 5:3, 6:2, 7:1, 8:3, 9:3, 10:2, 11:4, 12:4, 13:3, 14:1, 15:3, 16:1}

## Store questions in dictionary using dictionary comprehension 
qs1 = {"Q1_" + str(i+1): mcq4(ans1[i+1]) for i in range(16)}  


# Quiz 2: Differentiation and Integration

# In[6]:


## Store answers in a dictionary
ans2 = {1:3, 2:1, 3:4, 4:2, 5:2, 6:3, 7:4, 8:3, 9:2, 10:4, 11:3, 12:1, 13:1}

## Store questions in dictionary using dictionary comprehension 
qs2 = {"Q2_" + str(i+1): mcq4(ans2[i+1]) for i in range(13)}  


# Quiz 3: Matrices

# In[7]:


## Store answers in a dictionary
ans3 = {1:2, 2:4, 3:1, 4:2, 5:3, 6:3, 7:1, 8:4, 9:2, 10:1, 11:2, 12:3, 13:1, 14:4}

## Store questions in dictionary using dictionary comprehension 
qs3 = {"Q3_" + str(i+1): mcq4(ans3[i+1]) for i in range(14)}  


# Quiz 4: Combinatorics

# In[8]:


## Store answers in a dictionary
ans4 = {1:1, 2:4, 3:3, 4:3, 5:4}

## Store questions in dictionary using dictionary comprehension 
qs4 = {"Q4_" + str(i+1): mcq4(ans4[i+1]) for i in range(5)} 


# Quiz 5: Probability

# In[9]:


## Store answers in a dictionary
ans5 = {1:3, 2:4, 3:1, 4:3, 5:4, 6:2, 7:1, 8:4, 9:2, 10:1}

## Store questions in dictionary using dictionary comprehension 
qs5 = {"Q5_" + str(i+1): mcq4(ans5[i+1]) for i in range(10)} 


# Quiz 6: Probability theorems

# In[10]:


## Store answers in a dictionary
ans6 = {1:2, 2:4, 3:1}

## Store questions in dictionary using dictionary comprehension 
qs6 = {"Q6_" + str(i+1): mcq4(ans6[i+1]) for i in range(3)} 


# Quiz 7: Discrete random variables

# In[11]:


## Store answers in a dictionary
ans7 = {1:3, 2:1, 3:2, 4:4, 5:1, 6:3, 7:4, 8:1, 9:3, 10:1, 11:3, 12:4, 13:2, 14:2}

## Store questions in dictionary using dictionary comprehension 
qs7 = {"Q7_" + str(i+1): mcq4(ans7[i+1]) for i in range(14)} 


# Quiz 8: Continuous random variables

# In[12]:


## Store answers in a dictionary
ans8 = {1:3, 2:3, 3:2, 4:1, 5:1, 6:2}

## Store questions in dictionary using dictionary comprehension 
qs8 = {"Q8_" + str(i+1): mcq4(ans8[i+1]) for i in range(6)} 


# Quiz 9: Correlation and covariance

# In[13]:


## Store answers in a dictionary
ans9 = {1:2, 2:4, 3:3, 4:1}

## Store questions in dictionary using dictionary comprehension 
qs9 = {"Q9_" + str(i+1): mcq4(ans9[i+1]) for i in range(4)} 


# Quiz 10: More complex questions

# In[14]:


## Store answers in a dictionary
ans10 =  {1:3, 2:1, 3:4, 4:2, 5:1, 6:3, 7:1, 8:2, 9:4, 10:2, 11:4, 12:3, 13:2, 14:3}

## Store questions in dictionary using dictionary comprehension 
qs10 = {"Q10_" + str(i+1): mcq4(ans10[i+1]) for i in range(14)} 

