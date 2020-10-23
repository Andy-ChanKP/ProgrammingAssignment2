## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse= setinverse, getinverse= getinverse)
}

cacheSolve <- function(x, ...){
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting chached data")
    return (m)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(m)
  
}