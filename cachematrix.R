## There are two parts in this assignment to create a matrix first and the inverse from the matrix
##Creates a "matrix" object named makeCacheMatrix  that can cache its inverse with a function called cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        get  <- function() x
        setinverse  <- function(inverse) i  <<- inverse
        getinverse  <- function() i
        list(set= set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)
	i  <- NULL
        set  <- function(y){
                x <<- y
                i <<- NULL 
        }
}


## Computes the inverse matrix from cache of the function makeCacheMatrix with cacheSolve function

cacheSolve <- function(x, ...) {
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)
        i
	i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
}
