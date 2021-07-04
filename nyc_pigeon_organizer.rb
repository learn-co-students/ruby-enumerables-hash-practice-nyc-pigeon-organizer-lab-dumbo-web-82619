def nyc_pigeon_organizer(data)
  hsh = Hash.new
  
  data.each do |key, value|
    value.each do |attribute, names|
      names.each do |bird|
        unless hsh[bird]
          hsh[bird] = Hash.new
        end
        
        unless hsh[bird][key]
          hsh[bird][key] = Array.new
        end
        
        hsh[bird][key] << attribute.to_s
      end
    end
  end
  hsh
end