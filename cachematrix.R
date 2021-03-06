## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
   inverse <<- NULL
  }
  
  get <- function() x
  setInvertMatrix <- function(invertmatrix) inverse <<- invertmatrix
  getInvertMatrix <- function() inverse
  
  list(set=set, get=get, setInvertMatrix=setInvertMatrix, getInvertMatrix=getInvertMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInvertMatrix()
  
  if (!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  
  data <- x$get()
  
  inverse <- solve(data)
  x$setInvertMatrix(inverse)
  inverse
}

