## Caching the Inverse of a Matrix

## 1. Set values of matrix
## 2. Get values of matrix
## 3. Set value of matrix inverse
3# 4. Get value of matrix inverse

makeCacheMatrix <- function(x = matrix()) {
          inv <- NULL
          set<- function(y){
            x <<-y
            inv <<- NULL
          }
          get<- function()x
          setinverse<- function(inverse) inv <<- inverse
          getinverse<- function() inv
          list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Return the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv<- x$getinverse()
         if(!is.null(inv)) {
           message("getting cached data.")
           return(inv)
         }
         data<- x$get()
         inv<- solve(data)
         x$setinverse(inv)
         inv
}
