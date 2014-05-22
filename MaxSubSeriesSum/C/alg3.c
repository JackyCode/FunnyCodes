/*
############################################################
# alg3.c
# ------------
#
# method 3
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

static int MaxSubSum(const int A[], int Left, int Right);
int Max3(int a, int b, int c);

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
    return MaxSubSum(A, 0, N-1);
}

static int MaxSubSum(const int A[], int Left, int Right)
{
    int MaxLeftSum, MaxRightSum;
    int MaxLeftBorderSum, MaxRightBorderSum;
    int LeftBorderSum, RightBorderSum;
    int Center, i;

    if (Left == Right)   // Base Case
    {
        if (A[Left] > 0)
            return A[Left];
        else
            return 0;
    }

    Center = (Left + Right)/2;
    MaxLeftSum = MaxSubSum(A, Left, Center);
    MaxRightSum = MaxSubSum(A, Center + 1, Right);

    MaxLeftBorderSum = 0;
    LeftBorderSum = 0;
    for (i = Center; i >= Left; i--)
    {
        LeftBorderSum += A[i];
        if (LeftBorderSum > MaxLeftBorderSum)
            MaxLeftBorderSum = LeftBorderSum;
    }

    MaxRightBorderSum = 0; RightBorderSum = 0;
    for (i = Center + 1; i <= Right; i++)
    {
        RightBorderSum += A[i];
        if (RightBorderSum > MaxRightBorderSum)
            MaxRightBorderSum = RightBorderSum;
    }

    return Max3(MaxLeftSum, MaxRightSum, MaxLeftBorderSum + MaxRightBorderSum);
}

int Max3(int a, int b, int c)
{
    int tmp;

    if (a > b)
        tmp = a;
    else
        tmp = b;

    if (tmp > c)
        return tmp;
    else
        return c;
}