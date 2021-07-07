def nyc_pigeon_organizer(data)
  
pigeonhash = {}

  data.each do |top_tier, nested_tiers|
    nested_tiers.each do |category, array|
      array.each do |name|
        pigeonhash[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  pigeonhashkeys = pigeonhash.keys
  data[:color].each do |color, name|
    name.each do |bird_name|
      pigeonhashkeys.each do |name_as_key|
        if bird_name == name_as_key
          pigeonhash[name_as_key][:color] << color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, sex|
    sex.each do |bird_name|
      pigeonhashkeys.each do |name_as_key|
        if bird_name == name_as_key
          pigeonhash[name_as_key][:gender] << gender.to_s
        end 
        end 
    end 
  end 
  data[:lives].each do |location, place|
    place.each do |bird_name|
       pigeonhashkeys.each do |name_as_key|
        if bird_name == name_as_key
          pigeonhash[name_as_key][:lives] << location.to_s
        end 
      end 
      end 
  end 
  
   pigeonhash 
end 
