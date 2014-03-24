############################################################
# greatestCommonDivisor1.r:
# -------------------------
# This R Script tells how to calculate the greatest commmon
# divisor between two integer numbers
#
# Method 1
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

# use 'Recall'
greComDiv1 <- function(x, y) {
	if (!is.numeric(x)| !is.numeric(y)| x < 0 | y < 0 | round(x) != x | round(y) != y) {
			stop("the number you enter should be a positive integer!")
		}
	
	return(ifelse(!y, x, Recall(y, x %% y)))
}

greComDiv1(-4, 10)