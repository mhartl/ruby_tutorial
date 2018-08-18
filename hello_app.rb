require 'sinatra'
require './day'

DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday",
            "Thursday", "Friday", "Saturday"]

get '/' do
  greeting(Time.now)
end
