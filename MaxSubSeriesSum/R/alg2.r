############################################################
# alg2.c
# ------------
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


MaxSubSeriesSum <- function(a) {
    MaxSum = 0

    for (i in 1:length(a)) {
        ThisSum = 0
        for (j in i:length(a)) {
            ThisSum = ThisSum + a[j]

            if (ThisSum > MaxSum)
                MaxSum = ThisSum
        }
    }

    return(MaxSum)
}

a <- c(-2, 11, -4, 13, -5, -2)
MaxSubSeriesSum(a)