# def nyc_pigeon_organizer(pigeon_data)
#   new_pigeon_hash = {}
#     pigeon_data.each do |pigeon, pigeon_attribute|
#       new_pigeon_hash[pigeon] ||= pigeon_attribute>>new_pigeon_hash
#       new_pigeon_hash[pigeon_attribute][:color]
#       new_pigeon_hash[pigeon_attribute][:gender]
#       new_pigeon_hash[pigeon_attribute][:lives]
#     end
#     new_pigeon_hash
# end
    
def nyc_pigeon_organizer(data)
  hash={}
  data.each do |key,value|
    value.each do |new_val,name|
      name.each do |name|
      if !hash[name]
        hash[name]={}
      end
      if !hash[name][key]
        hash[name][key]=[]
      end
      hash[name][key]<< new_val.to_s 
    end
  end
end
hash        
end
