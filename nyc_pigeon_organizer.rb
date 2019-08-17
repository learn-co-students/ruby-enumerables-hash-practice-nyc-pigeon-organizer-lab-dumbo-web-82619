def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, optionhash|
    optionhash.each do |options, names| 
      names.each do |name|
        pigeon_list[name] = {}
      end
    end
  end
  puts pigeon_list
  pigeon_list.each do |name, attributes|
    data.each do |attribute, optionhash|
      attributes[attribute] = []
        optionhash.each do |options, names|
          if names.include?(name)
            attributes[attribute] << options.to_s
          end 
        end 
    end 
  end 
end

data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(data)