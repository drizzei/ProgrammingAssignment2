## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Takes a matrix as input and returns a list of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()){

        m <- NULL

	  set <- function(y){
	          x <<- y
		    m <<- NULL
	  }

	  get <- function () x
	  setsolve <- function(solve) m <<- solve
	  getsolve <- function() m
	  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## Write a short comment describing this function
## Takes a matrix to and checks if its inverse has been cached then either
## retrieves the calculated inverse or calls the solve function to calculate
## and cache the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
