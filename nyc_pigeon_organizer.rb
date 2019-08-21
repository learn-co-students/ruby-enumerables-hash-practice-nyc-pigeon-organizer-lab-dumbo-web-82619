require "pry"

def nyc_pigeon_organizer(data)
  data.reduce({}) do |hash, (key, value)|
    value.each do |type, names|
      names.each do |name|
        
      if hash[name]
        if hash[name][key]
          hash[name][key] << type.to_s
        else 
          hash[name][key] = [type.to_s]
        end
      else 
        hash[name] = {key => [type.to_s]}
      end
      end
    end
    hash
  end
end                     


#key = "color"
#value = whole hash of color => names
#type = type of color 
#name = name 
#memo = {}