
class Dictionary

	def initialize 
	@entries = {}

	end



	def entries
	@entries
	end

	def add(newhash)
	  if String === newhash
	    @entries[newhash] = nil # <-- h[key] = value
	  else
	    @entries.merge!(newhash)

	  end  
	end


	def keywords
	return @entries.keys.sort!
	end

	def include?(key)
	@entries.include?(key)

	end

	def find (prefix)
	dict_hash = {}
	@entries.each_pair do |key, value| 
		if key.index(prefix) 
	dict_hash[key] = value

		end

		end

		return dict_hash

		end

	def printable
		string = "" 
		newhash = Hash[@entries.sort]
		newhash.each { |key, value| 
		string << "[%s] \"%s\"\n" %[key, value]} 
		return string.chomp

	end


end
