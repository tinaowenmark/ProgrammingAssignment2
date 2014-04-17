## Matrix inversion is usually a costly computation and there may be some
## benefit to caching the inverse of a matrix rather than compute it
## repeatedly. This is a pair of functions that cache the inverse of a matrix.


## The first function, makeCacheMatrix, creates a special "matrix" object  
## that can cache its inverse. It actually creates a list containing a 
## function to:

##   set the value of the matrix
##   get the value of the matrix
##   set the inverse of the matrix 
##   get the inverse of the matrix 


makeCacheMatrix <- function(x = matrix()) {
        v <- NULL
        setMatrix <- function(y) {
                x <<- y
                v <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(solve) v <<- solve
        getInverse <- function() v
        list(setMatrix = setMatrix, 
             getMatrix = getMatrix,
             setInverse = setInverse,
             getInverse = getInverse)

        
}


## The second function, cacheSolve, returns the inverse of the matrix used as
## the 'x' argument for cacheSolve. 

cacheSolve <- function(x, ...) {

        v <- x$getInverse()
        if(!is.null(v)) {
                message("getting cached data")
                return(v)
        }
        data <- x$getMatrix()
        v <- solve(data, ...)
        x$setInverse(v)
        v
}

