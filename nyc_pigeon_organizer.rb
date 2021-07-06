def nyc_pigeon_organizer(data)
  profiles = {} 
  
  data.each do |attribute, info|
    info.each do |detail, name_array|
      name_array.each do |name|
        if profiles[name].nil?
          profiles[name] = {}
          profiles[name][attribute] = []
        else
          profiles[name][attribute] = []
        end
      end
    end
  end
  profiles.each do |name, values|
    values.each do |hash_value, array|
      data.each do |attribute, info|
        info.each do |detail, name_array|
          name_array.each do |element|
            if element == name && hash_value == attribute
              profiles[name][hash_value] << detail.to_s
            end
          end 
        end
      end
    end
  end
  return profiles
end


=begin
def nyc_pigeon_organizer(data)
  profiles = {} #reserve hash for final output
  names = data.values[0].values.flatten.uniq #build array of names

  names.each do |name| #for each name (iterate over names)
    bird_profile = {} #reserve hash for bird profile
    bird_attributes = [] #reserve hash for bird attributes
    data.each do |category, info| #for each category (iterate over categories)
      info.each do |attribute, bird| #reduce to attributes/names
        if bird.include?(name) #if an attribute includes that name
          bird_attributes.push(attribute.to_s) #build array of attributes
        end
      bird_profile[category] = bird_attributes #then update bird profile
      end
    profiles[name] = bird_profile #then update profile_hash with name_hash 
    end
  end
  return profiles
end
=end    
    

=begin    
def nyc_pigeon_organizer(data)
  profiles = {} 
  names = data.values[0].values.flatten.uniq

  names.each do |name| 
    bird_profile = {} 
    bird_attributes = [] 
    
    data.each do |category, info| 
      info.each do |attribute, bird| 
        if bird.include?(name) 
          bird_attributes.push(attribute.to_s) 
        end
        bird_profile[category] = bird_attributes
      end
    profiles[name] = bird_profile
    end
  end
  return profiles
end   
=end


