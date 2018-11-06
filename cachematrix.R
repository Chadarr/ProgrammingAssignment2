## Two functions that compute and cache the inverse of a matrix

##Creates matrix object and can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function( matrix ){
    mtrx <<- matrix
    inverse <<- NULL
  }
  get <- function() return(mtrx)
  setinverse <- function(inv) inverse <<- inv
  getinverse <- function() return(inverse)
  return (list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)  )
}


## Computes inverse and matches it with already calculated one.
## If matrix has not changed, will return cached value

cacheSolve <- function(matrix, ...) {
  ##get inverse and return if, if not null
  inverse <- matrix()$getinverse()
  if(!is.null( inverse )){
    message("Getting cached data..")
    return(inverse)
  }
  ##compute and store inverse
  data <- matrix$get()
  inverse <- solve(data) %*% data
  matrix$setinverse(inverse)
  return(inverse)
}
