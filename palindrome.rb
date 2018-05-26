# Returns true for a palindrome, false otherwise.
def palindrome?(string)
  string.downcase == string.downcase.reverse
end
