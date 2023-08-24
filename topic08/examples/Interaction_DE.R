# Analysis of interaction effects on DE parameters
library(DEoptim)

# Rosenbrock Banana function
Rosenbrock <- function(x) {
  x1 <- x[1]
  x2 <- x[2]
  100 * (x2 - x1 * x1)^2 + (1 - x1)^2
}

lower <- c(-10, -10)
upper <- -lower

# sample execution
parameters <- DEoptim.control(VTR = 1.0e-10, CR = 0.5, F = 0.8)
result <- DEoptim(Rosenbrock, lower, upper, parameters)
result$optim$bestmem  # solution found found
result$optim$iter     # Number of iterations

# testing with several CR and F
CRopts <- c(0.1, 0.3, 0.5, 0.7, 0.9)
Fopts <- c(0.2, 0.4, 0.8, 1.0, 1.2)

combos <- expand.grid(CR = CRopts, F = Fopts)

experiment <- function(p)  {
  sink("/dev/null")
  result <- DEoptim(Rosenbrock, lower, upper, 
                    DEoptim.control(VTR = 1.0e-5, CR = p[1], F = p[2]))
  sink()
  c(R = result$optim$iter, p[1], p[2])
}

reps <- 10
exp.results <- do.call(cbind, replicate(reps, apply(combos, 1, experiment), simplify = FALSE))
tab.results <- data.frame(t(exp.results))

tab.results

boxplot(tab.results$R ~ tab.results$CR, xlab = "CR", ylab = "number of iterations to success")
boxplot(tab.results$R ~ tab.results$F, xlab = "F", ylab = "number of iterations to success")

DE.lm <- lm(formula = R ~ F + CR + F*CR, data = tab.results)

summary(DE.lm)
# plot(DE.lm)

interaction.plot(tab.results$CR, tab.results$F, tab.results$R,
                 xlab = "CR Parameter",
                 ylab = "number of iterations to success",
                 trace.label = "F Parameter")

interaction.plot(tab.results$F, tab.results$CR, tab.results$R,
                 xlab = "F Parameter",
                 ylab = "number of iterations to success",
                 trace.label = "CR Parameter")


# Some more recipes
# https://statisticsbyjim.com/regression/interaction-effects/
# https://murraylax.org/rtutorials/regression_interaction.html
