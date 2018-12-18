## The code here is to cache the inverse of a matrix so it can be ##looked up instead of recomputing

## Create a special matrix to set the value of matrix, get the value ##of the matrix, set he value of the inverse and get the value of the ##inverse

makeCacheMatrix <- function(x = matrix()) {
 i<-NULL
      set<-function(y){
            x<<-y
            i<<-NULL
      }
      get<-function() x
      setinverse <- function(inverse) i<<-inverse
      getinverse<- function() i
      list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Calculates the inverse of a matrix

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
      if(!is.null(i)){
            message("getting cached data")
            return(i)
      }
      data<-x$get()
      i <- solve(data,...)
      x$setinverse(i)
      i
        ## Return a matrix that is the inverse of 'x'
}
