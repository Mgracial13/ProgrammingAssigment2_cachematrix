With these functions everyone can get the inverse of a matrix from a numeric vector.


makeCacheMatrix <- function(x = matrix()) {
        {m <- matrix(x,2,2)}
        return(m)
}


With "cacheSolve" function, you can get the inverse of your matrix.

cacheSolve <- function(x, ...) {
        m <- matrix(x,2,2)
        {
                cache <- function(m) 1/((m[1,1]*m[2,2])-(m[1,2]*m[2,1]))
                nv <- c(m[2,2],-m[2,1],-m[1,2],m[1,1])
                nm <- function(m) matrix(nv,2,2)
                cacheSolve <- cache(x)*nm(x)
        } 	
        return(cacheSolve)
}
