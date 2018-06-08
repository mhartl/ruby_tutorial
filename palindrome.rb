class String

  # Processes content for palindrome testing.
  def processed_content
    self.downcase
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
end
