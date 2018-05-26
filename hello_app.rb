require 'sinatra'
require './day'

get '/' do
  "Hello, world! Happy #{day_of_the_week(Time.now)}."
end
