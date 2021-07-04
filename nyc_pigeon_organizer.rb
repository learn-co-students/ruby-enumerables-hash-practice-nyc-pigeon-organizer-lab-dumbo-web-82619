def nyc_pigeon_organizer(pigeon_data)
 output_hash = {}
 pigeon_data.each do |key, value|
   value.each do |pushed_value, names_array|
     names_array.each do |pigeon_name|
       if !output_hash[pigeon_name]
         output_hash[pigeon_name] = {}
       end 
       if !output_hash[pigeon_name][key]
         output_hash[pigeon_name][key] = []
       end 
       output_hash[pigeon_name][key] << pushed_value.to_s
     end 
   end 
 end 
 output_hash
end 
