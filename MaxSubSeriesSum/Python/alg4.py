############################################################
# alg4.py
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

def MaxSubSeriesSum(a):
    n = len(a)
    ThisSum = 0
    MaxSum = 0
    for i in range(n):
        ThisSum += a[i]
        if ThisSum > MaxSum:
            MaxSum = ThisSum
        elif ThisSum < 0:
            ThisSum = 0

    return MaxSum

a = [-2, 11, -4, 13, -5, -2]
max_sub_series = MaxSubSeriesSum(a)
print max_sub_series