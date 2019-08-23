def nyc_pigeon_organizer(data)
  updated_pigeons = {}
  data.each {|type, info|
   info.each {|sub_info,names|
    names.each {|name|
      name_hash = {}
      name_hash[type] = [sub_info.to_s]
      if updated_pigeons[name] && updated_pigeons[name][type]
        updated_pigeons[name][type].push(sub_info.to_s)
      elsif updated_pigeons[name]
        old_name_hash = updated_pigeons[name]
        new_name_hash = old_name_hash.merge(name_hash)
        updated_pigeons[name] = new_name_hash
      else
      updated_pigeons[name] = name_hash
      end
    }
   }
  }
 updated_pigeons
end
