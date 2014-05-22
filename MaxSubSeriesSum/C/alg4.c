/*
############################################################
# alg4.c
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
    int ThisSum, Maxsum, j;

    ThisSum = Maxsum = 0;
    for (j = 0; j < N; j++)
    {
        ThisSum += A[j];

        if (ThisSum > Maxsum)
            Maxsum = ThisSum;
        else if (ThisSum < 0)
            ThisSum = 0;
    }

    return Maxsum;
}