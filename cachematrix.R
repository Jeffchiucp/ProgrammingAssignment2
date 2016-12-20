## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    setMatrix <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(setMatrix=setMatrix, getMatrix=getMatrix, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
        ## Return a matrix that is the inverse of 'x'
        inv<- x$getinverse()# if the inverse has already calculated this gets it.
        if(!is.null(inv)) { # check to see if matrix already cached
            message("getting cached data")
            return(i) # returning cached matrix
        }
        data <- x$getMatrix() # getting input matrix values
        inv<- solve(data, ...) # Applying inverse on that
        x$setinverse(inv) # Setting inverse
        inv  # returning inverse of matrix
}
