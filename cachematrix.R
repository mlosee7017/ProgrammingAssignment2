## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates and caches a matrix object that can cached its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        setm <- function(y) {
                x <<- y
                m <<- NULL
        }
        getm <- function() x
        setmatrix <- function(matrix) m <<- solve(matrix)
        getmatrix <- function() m
        list(setm = setm, getm = getm, setmatrix = setmatrix, getmartix = getmatrix)
}

## Write a short comment describing this function
## This function first checks the cache for the inversed matrix and if it's empty it performs the matric inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!isnull(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getm()
        m <- solve(data)
        x$setmatrix(m)
        m
}
