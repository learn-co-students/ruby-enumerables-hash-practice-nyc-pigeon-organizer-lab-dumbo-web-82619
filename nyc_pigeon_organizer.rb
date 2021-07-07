require("pry")

def nyc_pigeon_organizer(data)
  new_list = {}
  
  data.each do |key, value| 
    
    value.each do |new_key, names|
      
      names.each do |name|
        
        if new_list[name] == nil 
          
          new_list[name] = {}
        end
      
        if new_list[name][key] == nil
          
          new_list[name][key] = []
        end
        
        new_list[name][key] << new_key.to_s
        #binding.pry
      end
      
    end
     
    
  end
new_list










  # male = data[:gender][:male]
  # female = data[:gender][:female]
  
  # for name in male
  #   new_list[name] = {
  #     :color => data[:color].key([name]),
  #     :gender => data[:gender].key([name]), 
  #     :lives => data[:lives].key([name])

  #   }
  # end

  # for name in female
  #   new_list[name] = {
  #     :color => data[:color].key([name]),
  #     :gender => data[:gender].key([name]), 
  #     :lives => data[:lives].key([name])
  #   }
  # end
  
  # new_list
end
