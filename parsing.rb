require 'yaml'
require 'ostruct'

hashed_data = YAML.load_file('music.yml')

class IterativeStruct < OpenStruct
    def initialize(hash=nil)
    	@table = {}

    	hash.each do |key,value|
	    @table[key.to_sym] = (value.class == Hash ? self.class.new(value) : value)
    	end
    end

    def first
    end

    def last
    end
end


data = IterativeStruct.new(hashed_data)

puts data.genres
