# this R script tells how to count the numbers of 1 from 1~N
############################################################
# method 1
############################################################

## the 'countN1' is the main function and it returns the result
countN1 <- function(n) {
	if (!is.numeric(n) | round(n) != n) {
		stop("the number you enter should be an integer!")
	}
	
	num = 0
	for (i in 1:n) num = num + count(i)
	
	return(num)
}

## the 'count' is used to count the numbers within a integer
count <- function(n) {
	x <- c()
	while(n) {
		x <- c(n %% 10, x)
		n = n %/% 10
	}
	num = length(which(x==1))
	
	return(num)
}

countN1(99)
