def nyc_pigeon_organizer(pigeon_data)
  output_hash = {}
  pigeon_data.each do |key, value|
    value.each do |value_to_push, names_array|
      names_array.each do |name|  
        if !output_hash[name]
          output_hash[name] = {}
        end 
        if !output_hash[name][key]
          output_hash[name][key] = []
        end 
        output_hash[name][key] << value_to_push.to_s 
      end 
    end 
  end 
  output_hash
end 
