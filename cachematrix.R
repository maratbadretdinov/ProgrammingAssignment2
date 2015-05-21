## The following functions make possible caching of inversed matrix

## makeCacheMatrix creates a special "matrix", which is really a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setMatrix <- function(y) 
  {
      if(!identical(x,y)) {
          x <<- y
          inv <<- NULL
      }
      else message("matrix is identical to original!")
  }
  
  getMatrix <- function() x
  
  setInverse <- function(invm) inv <<- invm
  
  getInverse <- function() inv
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse,
       getInverse = getInverse)
}


## cacheSolve function computes the inverse of special "matrix" (which is actually a list) 
## created by makeCacheMatrix function.
## If there is a value for inverse matrix exists in cache, then function returns it. 
## Otherwise computes it, sets into cache, and returns.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  
  if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
  }
  
  data <- x$getMatrix()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
