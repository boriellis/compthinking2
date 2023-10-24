#class notes for october 23
#about running functions

#so, here's a function setup:
first_last_chr <- function(s) {
  first_chr <- substr(s, 1, 1)
  last_chr <- substr(s, nchar(s), nchar(s))
  result <- paste(first_chr, last_chr, sep = "")
  return(result)
}
text <- "Amazing!"
first_last_chr(text) #gives me the first and last character

#the four parts:
#the parameter is s (you could put anything in the parentheses as long as you're consistent as you work through it)
#keyword function
#body is everything inside the curly brackets
#function name is first_last_chr


first_last_chr("1,2,3,4")

#multiple parameters

# A new parameter: na.rm

x <- c(1,2,NA,3)
x <- x[!is.na(x)]

mymean <- function(x, dog) {
  if (dog == TRUE) {
    x <- x[!is.na(x)]
  }
  result <- sum(x)/length(x)
  return(result)
}

mymean(c(1, 5, 9), dog = TRUE)
mymean(c(1, 5, 9), dog = FALSE)
mymean(c(1, NA, 5, 9), dog = TRUE)
mymean(c(1, NA, 5, 9), dog = FALSE)


#When you start having multiple parameters, some of them may be optional. You can specify a default value for parameters with =. For example, the following function repeats a character string multiple times, with an optional separating character that defaults to _.

repeat_chr <- function(s, n, separator = "_") {
  repeated <- rep(s, n) # see ?rep
  result <- paste(repeated, collapse = separator)
  return(result)
}

# Leave `separator` with the default value
repeat_chr("foo", 3)
# Specify the `separator` by name
repeat_chr("foo", 3, separator = " ")
# Specify the `separator` by position
repeat_chr("foo", 3, " ")


