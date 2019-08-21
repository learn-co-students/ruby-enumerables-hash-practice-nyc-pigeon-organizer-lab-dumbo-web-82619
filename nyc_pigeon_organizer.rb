def nyc_pigeon_organizer(pigeon_data)
    pigeon_list = {}

    pigeon_data.each do |property, property_hash|
     property_hash.each do |values, pigeon_array|
      pigeon_array.each do |name|
        if pigeon_list[name]
          if pigeon_list[name][property]
            pigeon_list[name][property] << values.to_s
          else
            pigeon_list[name][property] = [values.to_s]
          end
        else
          pigeon_list[name] = { property => [values.to_s] }
        end
      end
    end
  end
    pigeon_list
  end
