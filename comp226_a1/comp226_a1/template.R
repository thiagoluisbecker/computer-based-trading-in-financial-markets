

book.total_volumes <- function(book) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #
    # Returns:
    #   The total volume in the book.
  asks = book$ask
  bids = book$bid
  total_volume = list(bid=sum(bids$size), ask = sum(asks$size))
  return(total_volume)
}

book.best_prices <- function(book) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #
    # Returns:
    #   A list with "ask" and "bid", the values of which are the best prices in
    #       the book.
  asks = book$ask
  bids = book$bid
  best_prices = list(bid = max(bids$price), ask = min(asks$price))
  #to-ask: is the minimum bid and the maximum ask for the best price?
  return(best_prices)
}

book.midprice <- function(book) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #
    # Returns:
    #   The midprice of the book.
  #to-ask: how can i use book.best_prices here?
  asks = book$ask
  bids = book$bid
  
  best_ask = min(asks$price)
  best_bid = max(bids$price)
  
  return((best_ask + best_bid)/2)
}

book.spread <- function(book) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #
    # Returns:
    #   The spread of the book.
  #to-ask: how can i use book.best_prices here?
  asks = book$ask
  bids = book$bid
  
  best_ask = min(asks$price)
  best_bid = max(bids$price)
  print(best_bid)
  print(best_ask)
  return(best_ask - best_bid)
}

book.add <- function(book, message) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #   message - A list containing "oid", "side", "price" and "size" entries.
    #
    # Returns:
    #   The updated book.
    return(book)
}

book.reduce <- function(book, message) {
    # Arguments:
    #   book - A list containing "ask" and "bid", each of which are dataframes
    #       containing the collection of limit orders.
    #   message - A list containing "oid" and "amount".
    #
    # Returns:
    #   The updated book.
    return(book)
}

###############################################################################
###############################################################################

# The following functions are the "extra" functions; marks for these functions
# are only available if you have fully correct implementations for the 6
# functions above

book.extra1 <- function(book, size) {
    # See handout for instructions
}

book.extra2 <- function(book, size) {
    # See handout for instructions
}

book.extra3 <- function(book) {
    # See handout for instructions
}

book.extra4 <- function(book, k) {
    # See handout for instructions
}
