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

# select: Imperative version
def imperative_filter(states)
  singleWordStates = []
  states.each do |state|
    if (state.split(/\s+/).length == 1)
      singleWordStates.push(state)
    end
  end
  singleWordStates
end
puts imperative_filter(states).inspect

# select: Functional version
def functional_filter(states)
  states.select { |state| state.split.length == 1 }
end
puts functional_filter(states).inspect

numbers = (1..10)

# reduce: Iterative solution
def iterative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  return total
end
puts iterative_sum(numbers)

# reduce: Functional solution
def functional_sum(numbers)
  numbers.reduce { |total, n| total += n }
end
puts functional_sum(numbers)

# reduce object: Imperative solution
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  return lengths
end
puts imperative_lengths(states)

# reduce object: Functional solution
def functional_lengths(states)
  states.reduce({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths(states)
