#!/usr/bin/env python
# coding: utf-8

# # Continuous Random Variables

# A discrete random variable $X$ takes values in a finite or countably infinite set, and is characterised by the probabilities $P(X=x_{j})$ for the possible values $x_{j}$ it might take. For example, e.g. $X=$ weight measured to the nearest kg (for people who weigh between 50kg and 61kg) would be a discrete random variable.
# 
# Conversely, **continuous random variables** arise when a random variable takes values in an *uncountably infinite* set, such as the set of real numbers.

# ## Probability density functions
# 
# For continuous random variables $X$, the probability that $X$ will take any particular value $x$ is actually zero. This is because although $X$ will take some value, there are *so many* possible values it could take the probability that it will take any particular value is zero. Instead of assigning probabilities to particular values, we define a **probability density function** $f(x)$ (also sometimes abbreviated PDF) such that for any two values $a$ and $b$,
# 
# $$
# P(a \leq X \leq b) =  \int^{b}_{a} f(x) dx.
# $$
# 
# So the probability that $X$ takes a value between $a$ and $b$ is equal to the area underneath the density function between $x=a$ and $x=b$.
# 
# 
# ```{figure} Images/pdf.png
# ---
# height: 300px
# name: pdf
# ---
# A probability density function
# ```
# 
# 
# 
# Probability density functions must satisfy a number of conditions, which ensure that the axioms of probability are not violated:
# - $f(x)\geq 0$ for all $x$
# - $\int^{\infty}_{-\infty} f(x) dx = 1$
# 
# This second condition is the continuous equivalent of the $\sum_{x_{j}} P(X=x_{j}) = 1$ requirement for discrete random variables. Notice that it is possible for $f(x)>1$, in contrast to the requirement for discrete $X$ that $0 \leq P(X=x_{j}) \leq 1$.
# 

# ## Cumulative distribution function
# 
# For continuous $X$, the CDF is defined as:
# 
# $$
# F(x) = \int^{x}_{-\infty} f(t) dt,
# $$
# 
# which is the area under the curve (of the density function) to the left of $x$. Note that when $x$ appears in the bounds of the integral, we do not use $x$ as the index within the integral (i.e. the integral contains $f(t) dt$ and not $f(x) dx$).
# 
# 
# Probabilities can be expressed using the CDF too:
# 
# $$
# P(a \leq X \leq b) = \int^{b}_{a} f(x) dx = \int^{b}_{- \infty} f(x) dx - \int^{a}_{- \infty} f(x) dx = F(b) - F(a)
# $$
# 

# ### Relationship between CDF and PDF
# 
# The CDF is the integral of the PDF (above). Therefore, we also have that
# 
# $$
# f(x) = \frac{d}{dx}F(x).
# $$

# ## Expectation and variance of continuous random variables
# 
# Expectation is defined for continuous random variables $X$ as for discrete $X$, but with the summation replaced by an integral:
# 
# $$
# \mu = E(X) = \int^{\infty}_{-\infty} x f(x) dx.
# $$
# 
# The variance is again defined as the expectation of the difference between $X$ and its mean, squared:
# The variance of continuous $X$ is thus given by:
# 
# $$
# Var(X) = E((X-\mu)^{2}) = \int^{\infty}_{-\infty} (x-\mu)^{2} f(x) dx.
# $$
# 
# As for discrete variables, we have the alternative form: $Var(X) = E(X^2) - E(X)^2$.

# ### Some rules for expectation and variance
# 
# The rules that we encountered for discrete variables also hold here. If $a$ and $b$ are constants, and $X$ is a continuous random variable then:
# - $E(aX + b) = aE(X) + b$
# - $Var (aX + b) = a^2Var (X)$
# 
# For two continuous random variables, $X$ and $Y$, we have:
# - $E(X + Y ) = E(X) + E(Y)$
# 
# If $X$ and $Y$ are also independent then:
# - $E(XY) = E(X)E(Y)$
# - $Var (X + Y) = Var (X) + Var (Y)$

# ### Expectation and variance of functions of a random variable
# 
# For a function of a random variable $X$, $g(X)$, we define the expectation as
# 
# $$
# E(g(X)) = \int^{\infty}_{-\infty} g(x) f(x) dx .
# $$
# 
# And the variance is
# 
# $$
# Var(g(X)) = \int^{\infty}_{-\infty} (g(x)- E(g(X)))^{2} f(x) dx.
# $$

# ## Joint continuous distributions
# 
# Earlier, we introduced the concept of the **joint probability distribution** of two discrete random variables $X$ and $Y$. The idea extends naturally to the case of two continuous random variables $X$ and $Y$. For constants $a, b, c$ and $d$,
# 
# $$
# P(a \leq X \leq b,\ c \leq Y \leq d) = \int^{b}_{a} \int^{d}_{c} f(x,y) \ dy\ dx.
# $$
# 
# The joint density function must satisfy
# 
# $$
# f(x,y) \geq 0\mbox{ for all }x,y 
# $$
# 
# and
# 
# $$
# \int^{\infty}_{-\infty} \int^{\infty}_{-\infty} f(x,y) \ dy\ dx = 1.
# $$
# 
# The **marginal distribution** of one variable can be obtained from the joint density function:
# 
# $$
# f(x) = \int^{\infty}_{-\infty} f(x,y)\  dy.
# $$
# 
# The (joint) cumulative distribution function for $(X,Y)$ is defined by:
# 
# $$
# F(x,y) = P(X\leq x, \ Y \leq y) = \int^{x}_{-\infty} \int^{y}_{-\infty} f(u,v) \ dv\ du.
# $$
# 
# Although we will not go into the details further here, we can make corresponding definitions for the joint distribution of mixtures of continuous and discrete random variables.

# ## Independence
# 
# Two continuous random variables $X$ and $Y$ are independent if their joint density function can be factorised into the product of their marginal densities, i.e.
# 
# $$
# f(x,y) = f(x)f(y) \mbox{ for all } x,y
# $$
