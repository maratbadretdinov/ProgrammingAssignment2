## The following functions make possible caching of inversed matrix

## makeCacheMatrix creates a special "matrix", which is really a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve function computes the inverse of special "matrix" created by makeCacheMatrix function.
## If there is a value for inverse matrix exists in cache, then function returns it. 
## Otherwise computes, sets it into cache and returns.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
