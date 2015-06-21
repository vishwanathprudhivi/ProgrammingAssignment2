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
		
		

