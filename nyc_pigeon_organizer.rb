require "pry"
def nyc_pigeon_organizer(data)
  data = data.reduce({}) do |memo, (key, values)|
    values.each do |item|
      names = item[1]
      names.each do |name|
        if memo[name]
          if memo[name][key]
          memo[name][key] << item[0].to_s
          else
          memo[name][key] = [item[0].to_s]
          end
        else
          memo[name] = {key => [item[0].to_s]}
        end
      end
    end
    memo
  end
  data
end
