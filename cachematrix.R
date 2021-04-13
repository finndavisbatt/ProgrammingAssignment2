## Put comments here that give an overall description of what your
## functions do

##set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
      x <<- y
      i <<-NULL
  }
  get <- function() {x}
  getinverse <- function(inverse) {i <<- inverse}
  getinverse <- function() {i}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This function calculates the inverse of the matrix from the first function.
## But, first it checks to see if the inverse has already been calculated. If so,
## it gets the inverse from the cache. If not, it calculates the inverse of the
## matrix and sets the value of the inverse in the cache using the setinverse function.



cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)){
      message("getting cached data")
      return(i)
  }
  mymatrix <- x$get()
  i <- solve(mymatrix, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
