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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
