## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## MFC Comments:  This function sets & gets the value of the vector, then sets and gets the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)

}


## Write a short comment describing this function

##  MFC Comments:  This function calculates the mean of makeCacheMatrix, after checking if 
## it has already been calculated and if so it will use the cached version - based on provided code

cacheSolve <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
        ## Should return a matrix that is the inverse of 'x'
}
