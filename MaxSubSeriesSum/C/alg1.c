/*
############################################################
# alg1.c
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
*/

#include <stdio.h>

int main()
{
    int a[6] = {-2, 11, -4, 13, -5, -2};
    int max_sub_series;

    int MaxSubSeriesSum(const int A[], int N);

    max_sub_series = MaxSubSeriesSum(a, 6);
    printf("%d\n", max_sub_series);

    return 0;
}

int MaxSubSeriesSum(const int A[], int N)
{
    int ThisSum, MaxSum, i, j, k;

    MaxSum = 0;
    for (i = 0; i < N; i++)
    {
        for (j = i; j < N; j++)
        {
            ThisSum = 0;
            for(k = i; k <= j; k++)
            {
                ThisSum += A[k];

                if(ThisSum > MaxSum)
                    MaxSum = ThisSum;
            }
        }
    }
    return MaxSum;
}