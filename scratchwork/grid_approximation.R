

n <- 1e4
from <- 0
to <- 1
x <- seq(from=from, to=to, length.out=n)
# prior <- dunif(x, from,to)
prior <- ifelse( x < 0.5 , 0 , 1 )#dnorm(x, 0, 1)
lk <- dbinom(6, size=9, prob=x)
unstd_post <- prior*lk 
posterior <- unstd_post/sum(unstd_post)
plot(x, posterior, type = 'b')
