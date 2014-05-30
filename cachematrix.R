## start

## function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x=numeric()) {
            inv <- NULL
            set <- function(y){
            x <<- y
            inv <<- NULL
            }
            get <- function() x
            setinv <- function(inverse) inv <<- inverse
            getinv <- function() inv
            list(set = set, get = get, setinv = setinv, getinv = getinv)
    }
    
    
 ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        inv <- X$getinv()
        if (!is.null(inv)){
                message("getting cahed data")
        return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
    }
    
   
