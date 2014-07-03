# Load the YAML ruby library.
require 'yaml'

# Read our file, gives us a hash that fulfills first challenge requirement.
data = YAML.load_file 'music.yml'

# Modify hash to satisfy second challenge requirement.
def data.method_missing(n)
  self[n.to_s]
end

# Just some debugging.
puts data.inspect
puts data['genres']
puts data.genres
