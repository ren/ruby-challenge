# Load the YAML ruby library
require 'yaml'

# Read our file.
data = YAML::load(File.open('music.yml'))

# Let's see if that worked..
puts data.inspect
