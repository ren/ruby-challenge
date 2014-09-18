require 'yaml'
require 'ostruct'

data = OpenStruct.new(YAML.load_file('music.yml'))


puts data
puts data["genres"].last["artists"].first["albums"].first["tracks"].last["name"]
puts data.genres.last
