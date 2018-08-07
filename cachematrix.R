## Put comments here that give an overall description of what your
## functions do

## This fucntion creates a special "matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix(),y) {
        m <- NULL
        setmatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getmatrix <- function() x
        setinverse<- function(solve) m <<- solve
        getinverse <- function() m
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinverse = setinverse,
             getinverse = getinverse)
       } 


## This relates to the previous function
## As this function computes the inverse of the special "Matrix". As mentioned before, it takes the Special
## "Matrix" and computes it in this function. 

## if it is already calculated it will retrived the already computed inverse from the cache.
cachesolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getmatrix()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

