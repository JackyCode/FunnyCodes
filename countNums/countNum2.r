############################################################
# countNum2.r:
# ------------
# this R script tells how to count the numbers of 1 from 1~N
#
# method 2
############################################################
#
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

## a more productive algorithm to solve the problem
countN2 <- function(n) {
	if (!is.numeric(n) | round(n) != n) {
		stop("the number you enter should be an integer!")
	}
	
	i <- 1
	num <- 0
	while (n %/% i) {
		L = n - (n %/% i) * i
		C = (n %/% i) %% 10
		H = n %/% (i * 10)
		
		if (C == 0){
			num = num + H * i
		} else if (C == 1) {
			num = num + H *i + L + 1
		} else {
			num = num + (H + 1) * i
		}
		i = i*10
	}
	
	
	return(num)
}

countN2(210)