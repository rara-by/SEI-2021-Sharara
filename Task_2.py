# -*- coding: utf-8 -*-
"""
Created on Mon Jan 25 18:33:45 2021

@author: hp
"""

n = int(input())
weight = [0] * n 

def efficientJanitor(n, weight):

    for i in range(n):
        weight[i] = float(input())
        
    weight.sort(reverse = True)
    
    for i in range(n):
        j = i + 1
        while j < len(weight):
            bag = weight[i] + weight[j]
            if bag <= 3.0:
                weight[i] = bag
                weight.pop(j)
                #print(weight)
            j = j + 1
    
    return (len(weight))

print(efficientJanitor(n, weight))