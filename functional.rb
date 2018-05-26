states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#  Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# map: Imperative version
def imperative_map(states)
  url_states = []
  states.each do |state|
    url_states << urlify(state)
  end
  url_states
end
puts imperative_map(states).inspect

# map: Functional version
def functional_map(states)
  states.map { |state| urlify(state) }
end
puts functional_map(states).inspect
