# -*- coding: utf-8 -*-
"""Assignment 2.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1yk7HuhpsGpQMuEwNhsvIB9jXimhTPim5

# Assignment 2
by Arnav Kumar Jain

## 1. WAP that takes a sentence as an input and convert the text in sentence to pig latin.
Pig-Latin takes the first letter of a word, puts it at the end, and appends ay. The only exception is if the first letter is a vowel, in which case we keep it as it is and append hay to the end.
"""

def piglatin(s):
    s=s.split(" ")
    for i in range(len(s)):
        if s[i].isalpha():
            s[i] = s[i]+"ay" if s[i][0] in "AEIOUaeiou" else s[i][1:]+s[i][0].lower()+"ay"
    s=" ".join(s).capitalize()
    return s
if __name__=="__main__":
    print (piglatin(input("Enter a sentence: ")))

"""## 2. WAP that takes a list as an input and returns another list without duplicate values."""

def removedup(L):
    return [L[i] for i in range (len(L)) if L[i] not in L[:i]]
def main():
    L=[]
    n=int(input("Enter length of array: "))
    print("Enter array elements")
    for i in range(n):
        L.append(input())
    print("Entered array:",L)
    print("Updated array:",removedup(L))
if __name__=="__main__":
    main()

"""## 3. WAP that takes a list as an input and returns the reversed list"""

def reverselist(L):
    return [L[i] for i in range (-1,-len(L)-1,-1)]
#Alternative for L.reverse()
def main():
    L=[]
    n=int(input("Enter length of array: "))
    print("Enter array elements")
    for i in range(n):
        L.append(input())
    print("Entered array:",L)
    print("Updated array:",reverselist(L))
if __name__=="__main__":
    main()