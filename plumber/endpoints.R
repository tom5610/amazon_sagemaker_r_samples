
#' Ping to show server is there
#' @get /ping
function() {
    return('Alive')
}


#' Parse input and return prediction from model
#' @param req The http request sent
#' @post /invocations
function(req) {
#     print(req$postBody)
    # Read in data
    input <- req$postBody
#     print(input)
    output <- inference(input)
    # Return prediction
    return(output)

}