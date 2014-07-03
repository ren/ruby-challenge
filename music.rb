# Load the YAML ruby library.
require 'yaml'

# Read our file, gives us a hash that fulfills first challenge requirement.
data = YAML.load_file 'music.yml'

# Modify Hash class to satisfy second challenge requirement.
class Hash
  def method_missing(meth)
    self[meth.to_s]
  end
end

# Just some debugging/tests..
#
# Output hash of YAML
puts data.inspect
# Output genres
puts data['genres']
# Output genres via method
puts data.genres
# Output challenge requirement #1
puts data['genres'].last['artists'].first['albums'].first['tracks'].last['name']
# Output challenge requirement #2
puts data.genres.last.artists.first.albums.first.tracks.last.name
