require "pry"

def reformat_languages(languages)

  new_hash = {}
  puts "#{new_hash} before addition"

  def new_entry(hash, name_v, type_v, style_v)
    if hash[name_v] == nil
      hash[name_v] = {type: type_v, style: style_v}
    else
      hash[name_v][:style] = hash[name_v][:style] << style_v[0]
    end
    puts "#{hash} after addition"
    hash
  end

  #new_entry(new_hash, :javascript, "interpreted", [:oo, :functional])

  languages.each do |style_key, language_value|
    puts "#{style_key} as style key"
    #puts language_value
    language_value.each do |language_key, attributes_value|
      puts "  #{language_key} as language key"
      #puts attributes_value
      attributes_value.each do |k, v|
        puts "      #{k} as k"
        puts "          #{v} as v"
        new_entry(new_hash, language_key, v, [style_key])
      end
    end
  end

  puts "#{new_hash} to be returned"
  new_hash
end



# get a list of the possible languages
# get a list of the possible styles
# get a list of the possible types
