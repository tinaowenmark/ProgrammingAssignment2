### README for R Programming Assignment 2

This README is adapted from assignment text provided by the course instructor. 

###Introduction
This programming assignment required me to write an R function that is able to cache potentially time-consuming computations. For example, taking the mean of a numeric vector is typically a fast operation. However, for a very long vector, it may take too long to compute the mean, especially if it has to be computed repeatedly (e.g. in a loop). If the contents of a vector are not changing, it may make sense to cache the value of the mean so that when we need it again, it can be looked up in the cache rather than recomputed. In this Programming Assignment we took advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside of an R object.

###The Assignment
The instructor provided a highly related example of code, showing how to store and retrieve the mean of a vector. See [Assignment_README.md](https://github.com/tinaowenmark/ProgrammingAssignment2/blob/master/Assignment_README.md). 

The assignment itself was to write a pair of analogous functions to cache and retrieve the inverse of a matrix. Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly. While I understand there are also alternatives to matrix inversion, they were not discussed in this class. 

###Repo Contents
This GitHub repo contains three documents: 
* The README you are reading right now, [Assignment_README.md](https://github.com/tinaowenmark/ProgrammingAssignment2/blob/master/Assignment_README.md)
* The assignment text provided by the instructor in his own repo
* The code containing the two functions required by the assignment, [cachematrix.R](https://github.com/tinaowenmark/ProgrammingAssignment2/blob/master/cachematrix.R)

[cachematrix.R](https://github.com/tinaowenmark/ProgrammingAssignment2/blob/master/cachematrix.R) contains the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then the
    `cachesolve` should retrieve the inverse from the cache.

###Process
In order to complete this assignment, I had to do the following:

1.  Clone the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
2.  Edit the R file contained in the forked git repository and place my
    solution in that file (please do not rename the file).
3.  Commit my completed R file into my git repository and push my
    git branch to my GitHub account.
4.  Submit to Coursera the URL to my GitHub repository that contains
    the completed R code for the assignment.

###Grading
This assignment will be graded via peer assessment. Peer, I want to thank you for your time!
