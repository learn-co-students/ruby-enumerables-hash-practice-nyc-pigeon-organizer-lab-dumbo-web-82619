require "pry"
def nyc_pigeon_organizer(data)
  data = data.reduce({}) do |memo, (key, values)|
    values.each do |type, names|
      names.each do |name|
        if memo[name]
          if memo[name][key]
          memo[name][key] << type.to_s
          else
          memo[name][key] = [type.to_s]
          end
        else
          memo[name] = {key => [type.to_s]}
        end
      end
    end
    memo
  end
  data
end
