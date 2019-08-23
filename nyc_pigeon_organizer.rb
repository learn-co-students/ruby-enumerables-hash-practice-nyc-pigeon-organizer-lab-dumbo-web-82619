def nyc_pigeon_organizer(data)
  # write your code here
  new_data = {}
  names = data[:gender][:male] + data[:gender][:female]
  
  names.map{|pigeon|
    new_data[pigeon] = {} 
    
    data.map{|key, value|
      values_array = []
      
      value.map{|key2, value2|
        if value2.include? pigeon
          values_array << key2.to_s
        end
      }
      new_data[pigeon][key] = values_array
      
    
    }
    
  }
  
  new_data
end
