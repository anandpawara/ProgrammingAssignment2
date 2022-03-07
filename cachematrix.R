## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 j <- NULL
 set <<- function(y){
   x <<- y 
   j <<- NULL
 }
 get <- function()x
 setInverse <- function(inverse) j <<- inverse
 getInverse <- function()j
 list(set=set,get=get,
      setInverse = setInverse,
      getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()  ## Check if x inverse is cached, if j is not null then returns cached value
  if(!isnull(j)){
    message("getting cached data")
    return(j)
  }
  
  mat <- x$get()  ## gets the matrix
  j <- solve(mat,...)
  x$setInverse(j) ## Solved the inverse of matrix and stores in cache 
  j               ## Return inverse of matrix
}
