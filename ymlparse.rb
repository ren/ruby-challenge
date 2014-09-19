require 'yaml'
require 'pry'
require 'ostruct'

class Object
 def to_os
   self
 end
end

class Array
 def to_os
   map{ |data| data.to_os }
 end
end

class Hash
 def to_os
   map = {}
   each{ |key,value| map[key] = value.to_os }
   OpenStruct.new(map)
 end
end

module YAML
 def self.load_os(source)
   self.load(source).to_os
 end
end

data = YAML.load(File.read('music.yml'))
puts data["genres"].last["artists"].first["albums"].first["tracks"].last["name"]

data = YAML.load_os(File.read("music.yml"))
puts data.genres.last.artists.first.albums.first.tracks.last.name
