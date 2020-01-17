def nyc_pigeon_organizer(data)

# create names hash with empty values

name_array = data[:gender].map { |k, v| v}
consolidated_name_array = name_array[0] + name_array[1]  
pigeon_names_hash = Hash[consolidated_name_array.collect { |item| [item, ""] } ]

#modify names hash to include color, gender and lives

  pigeon_names_hash.each do |key, value|
    pigeon_names_hash[key] = {:color => [], :gender => [], :lives => [] }
  end






# color

# gender

# living


pigeon_names_hash
end
