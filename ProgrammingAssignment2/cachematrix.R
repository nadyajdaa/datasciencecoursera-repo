## Put comments here that give an overall description of what your
## functions do

## The Below function creates a matrix inverse using the setInverse method
## it returns a list with all methods in it

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
set <- function(y = matrix())
  x <<- y
  m <<- NULL


get <- function ()x
setinverse <- function(solve) m <<- solve
getinverse <- function () m
list( set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## The below function attempts to retrive the inverse of a matrix from the object passed to it.
## It checks whether it's value is Null or not. If it is Null, it uses the setInverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 
  m <- x$getinverse()
  
  if(!is.null(m)){
    message("getting Cached data")
    return(m)
  }
     matrixx <- x$get()
     m <- solve(matrixx, ...)
     x$setinverse(m)
     m
}
