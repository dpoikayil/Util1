require "date"

# class details...
#

keywordlist = [ nil,String,Integer,TRUE,FALSE]
request_values = {
    :language => String,
    :title => nil,
    :description => String,
    :startDate => Integer,
    :endDate => Integer,
    :containerType =>Integer,
    :containerId => String,
    :visibilityScope => String,
    :accessScope => String,
    :cascade => TRUE,
    :deleted => FALSE
}

class Create_object_body

# return_hash = {}

  def initialize

  end

  def string_helper(size=0)
    puts " its a String"
    sample_str = [*('a'..'z')].sample(size).join
    return sample_str
  end

  def integer_helper(size=10)
    return [*(0..9)].sample(size).join

  end

  def replace_values_util(request_values, keywordlist, env_var= 'UAT2')
    return_hash = {}
    request_values.each do |key, value|
        puts " the id is #{key} and  the value is #{value}"
        puts value

        case value.to_s.downcase()

          when 'string'
            s = string_helper(2)
            return_hash[key] = s

          when 'true'
            return_hash[key] = TRUE
          when 'false'
            return_hash[key] = FALSE
          when 'integer'
            i = integer_helper()
            return_hash[key] = i
          when 'nil'
            return_hash[key] = nil
            puts " this is nil"
          when Date
            puts " this is date"
          else
            puts "None of them"
        end
        puts return_hash
        # if value == String
        #   s = string_helper()
        #   puts key
        #   return_hash[ key ]  = s
        #   puts return_hash
        # end # end if


    end # end do

      # puts keywordlist
      puts env_var
  end  # end method

end # end class

obj = Create_object_body.new
obj.replace_values_util(request_values,keywordlist,"UAT2")
