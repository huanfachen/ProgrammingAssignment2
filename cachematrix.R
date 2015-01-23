## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv.x <- NULL
  set <- function(y) {
    x <<- y
    inv.x <<- NULL
  }
  get <- function() x
  setInv <- function(inv.mat) inv.x <<- inv.mat
  getInv <- function() inv.x
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  tmp.inv <- x$getInv()
  if(is.null(tmp.inv))
  {    
    message("New computing")
    tmp.inv <- solve(x$get())
    x$setInv(tmp.inv)
  }
  tmp.inv
}
