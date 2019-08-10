require 'pry' 

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |data_key, data_value|
    data_value.each do |key, value|
      value.each do |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(data_key)
            pigeon_list[name][data_key].push(key.to_s)
          elsif !pigeon_list[name].has_key?(data_key)
            pigeon_list[name][data_key] = []
            pigeon_list[name][data_key].push(key.to_s)
          end
        elsif !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
          pigeon_list[name][data_key] = []
          pigeon_list[name][data_key].push(key.to_s)
        end
      end
    end
  end
  pigeon_list
end
