## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <- y
    inv <- NULL
  }
  get <- function() x
  setInv <- function(inverse){
    inv <<- inverse
  }
  getInv <- function() inv
  list(get=get,
       set=set,
       getInv=getInv,
       setInv=setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  output <- x$getInv()
  if (!is.null(output)){
    message("Getting cached data")
    return(output)
  }
  output <- solve(x$get())
  x$setInv(output)
  output
}

