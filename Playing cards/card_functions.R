# deal <-
function(k, n, deck){
  # Select kxn cards at random without replacement.
  temp <- hand(k*n, deck)
  # Reshape selections into a kxn matrix. Since R
  # fills by column, this is like dealing the cards
  # out in circular order around the table. (Not that
  # it makes any difference since the selection process
  # is a random permutation of the deck anyway.)
  matrix(temp, k, n)
}
hand <-
function(n, deck)sample(deck, n, replace=FALSE)
