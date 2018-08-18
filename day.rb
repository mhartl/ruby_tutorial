require 'date'

# Returns the day of the week for the given Time object.
def day_of_the_week(time)
  Date::DAYNAMES[time.wday]
end

# Returns a friendly greeting.
def greeting(time)
  "Hello, world! Happy #{day_of_the_week(time)}."
end
