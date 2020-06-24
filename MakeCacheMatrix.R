makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  s <- NULL
  set <- function(y){
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}
cacheSolve <- function(x,...){
  s <- x$getsolve()
  if(!is.null(s)){
    message("getting inversed matrix")
    retunr(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setvolve(s)
  s
}