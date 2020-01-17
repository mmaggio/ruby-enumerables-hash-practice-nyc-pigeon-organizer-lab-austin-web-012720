def nyc_pigeon_organizer(data)

# create names hash with empty values

name_array = data[:gender].map { |k, v| v}
consolidated_name_array = name_array[0] + name_array[1]  
pigeon_names_hash = Hash[consolidated_name_array.collect { |item| [item, ""] } ]

#modify names hash to include color, gender and lives

pigeon_names_hash.each do |key, value|
    pigeon_names_hash[key] = {:color => [], :gender => [], :lives => [] }
  end

#external loop through each name

consolidated_name_array.each do |name|

  #internal loop through each color
  data[:color].reduce({}) do |memo, pair|
    color_symbol = pair[0]
    color = color_symbol.to_s
    pigeon_names_hash[name][:color] << color if data[:color][pair[0]].include?(name)
    memo 
  end
  
  # internal loop through each gender
  
  
end






# living


pigeon_names_hash
end
