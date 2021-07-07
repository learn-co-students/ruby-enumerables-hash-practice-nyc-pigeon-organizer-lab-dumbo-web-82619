def nyc_pigeon_organizer(data)
  colors = data.values[0]
  gender = data.values[1]
  lives = data.values[2]
  pigeon_data = {}
  colors.each do |color, names|
    names.each do |name|
      if pigeon_data[name]            # 
        if pigeon_data[name][:color]  # pigeon has multiple colors
          pigeon_data[name][:color].push(color.to_s)   
        end
      else                            # no pigeon with a name in the hash 
        pigeon_data[name] = {:color => [color.to_s] }
      end
    end 
  end

    gender.each do |gender, names|
      names.each do |name|
        if pigeon_data[name]            
          if pigeon_data[name][:gender]  
          else                          # pigeon will get an name
            pigeon_data[name][:gender] = [gender.to_s]     
          end
        else                            # no pigeon with a name in the hash 
          pigeon_data[name][:gender] = [gender.to_s]
        end
      end 
    end

    lives.each do |place, names|
      names.each do |name|
        if pigeon_data[name]            
          if pigeon_data[name][:lives]  
          else                          # pigeon will get an name
            pigeon_data[name][:lives] = [place]     
          end
        else                            # no pigeon with a name in the hash 
          pigeon_data[name][:lives] = [place]
        end
      end 
    end

  pigeon_data
end
