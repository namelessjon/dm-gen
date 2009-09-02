require 'rubygems'
gem('bacon')
require 'bacon'

require 'dm_gen'

# get a summary of errors raised and such
Bacon.summary_on_exit

def create(file)
  lambda { |obj| obj.all_actions.map{|t| t.destination }.include?(file) }
end
