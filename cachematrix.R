## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function makeCacheMatrix inputs a matrix and set the value of it,
## Also set its inverse Matrix and get the inverse Matrix.

## <<- operator can be used to assign value to an object in an environment which is different from the current environment 


makeCacheMatrix <- function(x = matrix()) {
invMatrix <- NULL
setMatrix <- function(y) {
x <<- y
invMatrix <<- NULL
}
}
getMatrix <- function() x 
setInverse <- function(inverse) invMatrix <<- inverse
getInverse <- function() invMatrix
list(setMatrix = setMatrix, getMatrix = getMatrix,
setInverse = setInverse, getInverse = getInverse)
## Write a short comment describing this function

## The function cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as
## input and checks whether inverse matrix has any value in it or not.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  
## when inverse matrix is not NULL
invMatrix <- x$getInverse()
if(!is.null(invMatrix)) {
message("Get Invertible Matrix")
return(invMatrix)
}
## when inverse matrix is NULL
MatrixData <- x$getMatrix()
invMatrix <- solve(MatrixData, ...)
x$setInverse(invMatrix)
return(invMatrix)
}
