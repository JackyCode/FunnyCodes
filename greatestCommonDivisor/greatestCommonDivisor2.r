############################################################
# greatestCommonDivisor2.r:
# -------------------------
# This R Script tells how to calculate the greatest commmon
# divisor between two integer numbers
#
# Method 2
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

greComDiv2 <- function(x, y) {
	if (!is.numeric(x)| !is.numeric(y)| x < 0 | y < 0 | round(x) != x | round(y) != y) {
			stop("the number you enter should be a positive integer!")
		}
		
	if (x < y) return(Recall(y, x))
	if (y == 0)
		return(x)
	else
		return(Recall(x - y, y))
}

greComDiv2(-4, 10)