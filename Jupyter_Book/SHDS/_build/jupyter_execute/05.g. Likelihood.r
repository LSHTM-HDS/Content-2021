# Define a range of values for pi
pi = seq(0,1,by = 0.05)

# Calculate the likelihood for each value, given n=8 and x=2
L_pi <- choose(8,2)*pi^2*(1-pi)^(8-2)

# Plot the output
plot(x = pi, y = L_pi)

# Add a line to indicate the value which yields the highest likelihood
abline(v = pi[which.max(L_pi)], col = "red")

options(repr.plot.width=8, repr.plot.height=6)

# Define a range of values for pi
pi = seq(0,1,by = 0.01)

# Calculate the likelihood for each value, this time given n=20 and x=12
L_pi <- choose(20,12)*pi^12*(1-pi)^(20-12)

# Plot the output
plot(x = pi, y = L_pi)

# Find the value of pi for which L_pi is highest
pi_max <- pi[which.max(L_pi)]

# Add a line to the plot at pi_max
abline(v = pi_max, col = "red")

# Add a title specifying the value of pi_max
title(paste("Maximum at", pi_max))

options(repr.plot.width=8, repr.plot.height=6)

# Define a range of values for lambda, equating to mean waiting times from 1 to 100 minutes
lam = seq(0.01,1,by = 0.01)

# Calculate the likelihood for each value, given y=8.75
L_lam <- lam*exp(-8.75*lam)

# Find the value of lambda for which L_lam is highest
lam_max <- lam[which.max(L_lam)]

# Plot the likelihood and indicate the maximum value
plot(x = lam, y = L_lam)
abline(v = lam_max, col = "red")
title(paste("Maximum at", round(lam_max,2)))

options(repr.plot.width=12, repr.plot.height=6)
par(mfrow = c(1,2))

# likelihood L(pi)
plot(x = pi, y = L_pi)
abline(v = pi_max, col = "red")
title(paste("Maximum at", pi_max))

# log-likelihood l(pi)
l_pi <- log(L_pi)
plot(x = pi, y = l_pi)
abline(v = pi[which.max(l_pi)], col = "red")
title(paste("Maximum at", pi[which.max(l_pi)]))

options(repr.plot.width=12, repr.plot.height=6)
par(mfrow = c(1,2))

# likelihood L(beta)
plot(x = lam, y = L_lam)
abline(v = lam_max, col = "red")
title(paste("Maximum at", round(lam_max,2)))

# log-likelihood l(beta)
l_lam <- log(L_lam)

plot(x = lam, y = l_lam)
abline(v = lam[which.max(l_lam)], col = "red")
title(paste("Maximum at", round(lam[which.max(l_lam)],2)))
