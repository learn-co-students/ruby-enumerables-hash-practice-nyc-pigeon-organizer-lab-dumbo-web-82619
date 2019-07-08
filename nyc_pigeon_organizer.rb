def nyc_pigeon_organizer(data)
  updated_hash = {}

  data.each do |key, value|
    value.each do |new_value, pigeons|  
      pigeons.each do |pigeon|
        if !updated_hash[pigeon]
          updated_hash[pigeon] = {}
        end
        
        if !updated_hash[pigeon][key]
          updated_hash[pigeon][key] = []
        end

        updated_hash[pigeon][key].push(new_value.to_s)
      end
    end
  end
  updated_hash
end
