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
