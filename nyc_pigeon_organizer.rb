def nyc_pigeon_organizer(data)
  # write your code here!
  newhash = Hash.new
  data.each do |key, description|
    description.each do |secondkey, names|
      names.each do |name|
      if !newhash[name]
        newhash[name] = {}
      end
      
      if !newhash[name][key]
        newhash[name][key] = []
      end
      
      newhash[name][key] << secondkey.to_s 
    end
  end
end
return newhash
end
