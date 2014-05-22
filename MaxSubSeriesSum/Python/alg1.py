############################################################
# alg1.py
# ------------
#
# method 1
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

def MaxSubSeriesSum(a):
    n = len(a)
    MaxSum = 0
    for i in range(n):
        for j in range(i, n):
            ThisSum = 0
            for k in range(i, j+1):
                ThisSum += a[k]
                if ThisSum > MaxSum:
                    MaxSum = ThisSum
    return MaxSum

a = [-2, 11, -4, 13, -5, -2]
max_sub_series = MaxSubSeriesSum(a)
print max_sub_series