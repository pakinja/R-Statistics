Frec.dist <- function(data, n.int){
  raw.tab <- binning(data, nbins = n.int)
  tab <- list()
  tab$intleft <- raw.tab$breaks[1:n.int]
  tab$intright <- raw.tab$breaks[2:(n.int+1)]
  tab$mc <- raw.tab$x
  tab$freq <- raw.tab$table.freq
  tab$freqrel <- raw.tab$table.freq / length(data)
  tab$freqacum <- cumsum(raw.tab$table.freq / length(data))
  return(tab)
}
