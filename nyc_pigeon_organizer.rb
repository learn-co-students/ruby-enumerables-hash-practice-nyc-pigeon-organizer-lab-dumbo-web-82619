def nyc_pigeon_organizer(data)
  
  new_data = {}
  names = []
  attributes = data.keys
  values = []
  
  attributes.length.times do |i|
    values.push(data[attributes[i]].keys)
  end
  
  attributes.length.times do |i|
    values[i].length.times do |j|
      
      data[attributes[i]][values[i][j]].each do |x|
        names.push(x)
      end
      
    end
  end
  
  names = names.uniq
  
  names.length.times do |i|
    new_data[names[i]] = {}
  end
  
  attributes.length.times do |i|
    names.length.times do |j|
      new_data[names[j]][attributes[i]] = []
    end
  end
  
  attributes.length.times do |i|
    values[i].length.times do |j|
      names.length.times do |k|
        
        if data[attributes[i]][values[i][j]].include?(names[k])
          new_data[names[k]][attributes[i]].push(values[i][j])
        end
        
      end
    end
  end
  
  names.length.times do |i|
    new_data[names[i]][:color].map! do |j|
      j.to_s
    end
    new_data[names[i]][:gender].map! do |j|
      j.to_s
    end
  end
  
  return new_data
  
end