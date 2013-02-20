class XmlDocument

#attr_accessor :indents, :tagcount

  def initialize(arg = false)
   @indents = arg
   @tagcount = 0 
  end


 def prefixSpecificChars
    if @indents 
      return "  " * (@tagcount)
    else
      return ""
    end
  end

  def suffixSpecificChars
    if @indents 
      return "\n"
    else
      return ""
    end
  end


  def method_missing (name, attribute_hash={})
    new_name = name.to_s

    if block_given? 
      s = prefixSpecificChars
      s << "<#{new_name}>"
      @tagcount += 1
      s << suffixSpecificChars
      s << yield 
      @tagcount -= 1
      s << prefixSpecificChars
      s << "</#{new_name}>"
      s << suffixSpecificChars
      return s
    else
      s = prefixSpecificChars
      s << "<#{new_name}"
      @tagcount += 1
      attribute_hash.each do |key, value| 
        s << " %s='%s'" %[key, value] 
      end
      s << "/>" 
      @tagcount -= 1
      s << suffixSpecificChars
      return s
    end
  end

end