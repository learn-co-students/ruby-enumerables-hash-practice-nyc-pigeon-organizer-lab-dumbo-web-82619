def nyc_pigeon_organizer(data)
  holder = {}
  
  data.each {
    |col_gen_liv, descriptions|
    descriptions.each {
      |value, array|
      array.each {
        |name|
        if holder[name] == nil
          holder[name] = {}
          holder[name][col_gen_liv] = []
        else holder[name][col_gen_liv] = []
      end
      }
    }
  }
  
  holder.each {
    |name, values|
    values.each {
      |hash, array|
      data.each {
        |col_gen_liv, descriptions|
        descriptions.each {
          |value, array|
          array.each {
            |element|
            if element == name && hash == col_gen_liv
              holder[name][hash].push(value.to_s)
            end
          }
        }
      }
    }
  }
  
  return holder
end
