require 'yaml'
require 'ostruct'

data = OpenStruct.new(YAML.load_file('music.yml'))

#data will be returned as hash, so []operation works, but . operation does not
puts data
puts data["genres"].last["artists"].first["albums"].first["tracks"].last["name"]
puts data.genres.last
