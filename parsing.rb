require 'yaml'
require 'ostruct'

hashed_data = YAML.load_file('music.yml')
# had a misunderstanding of the load_file function, thought it could return a hash of the current yaml file, and continued on that thinking to work.
# And found that my class does work for hash, but not for the return value of load_file. I will think about this issue, and hope to have a discussion
# with you.

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
