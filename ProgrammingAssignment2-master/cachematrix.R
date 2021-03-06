## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  set <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
  get <- function() x
  setsolve<- function(solve) invMatrix <<- solve
  getsolve <- function() invMatrix
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 invMatrix <- x$getsolve()
  if(!is.null(invMatrix)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  invMatrix <- inversedMatrix(data, ...)
  x$setsolve(invMatrix)
  invMatrix
}