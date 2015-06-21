# This function creates an invertible matrix. Also, within the same matrix the user has the liberty to update the matrix as well 
# as update the inverse with "set_matrix" and "set_inverse". The user can display these values using "get_matrix" and "get_inverse"
makeCacheMatrix <- function( x = matrix())
{    		
		original_matrix <<- x
		inverse_matrix <<- NULL
		set_matrix = function(z)
		{	
			original_matrix <<- z
			inverse_matrix <<- NULL
		}
		get_matrix = function()
		{
			original_matrix
		}
		set_inverse = function(y = matrix())
		{
			inverse_matrix <<- y
		}	
		get_inverse = function()
		{
			inverse_matrix
		}		
		list( set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse)
}
#This function solves and displays the inverse of the matrix. If the inverse already exists using "set_inverse" then the same 
# value will be pulled from the cache and displayed. If it doesn't exist then a new inverse will be created and displayed.

cacheSolve <- function(x,...)
{
 		if(!is.null(inverse_matrix))
		{
			message("Getting cached Inverse")
		}
		else
		{	
			message("Creating new Inverse")
			inverse_matrix <<- solve(original_matrix)
		}
		inverse_matrix
}
		
		

