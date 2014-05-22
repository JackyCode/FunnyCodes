############################################################
# alg4.r
# ------------
#
# method 4
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
    ThisSum = 0
    MaxSum = 0

    for (i in 1:length(a)) {
        ThisSum = ThisSum + a[i]

        if (ThisSum > MaxSum) {
            MaxSum = ThisSum
        } else if (ThisSum < 0) {
            ThisSum = 0
        }
    }

    return(MaxSum)
}

a <- c(-2, 11, -4, 13, -5, -2)
MaxSubSeriesSum(a)