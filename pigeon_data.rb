require "pry"

pigeon_data = {
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

def get_uniq_names(hash)
  uniq_names = []
  hash.each do |att, info_hash|
    info_hash.each do |k,names_arr|
      names_arr.each do |name|
      uniq_names << name
      end
    end
  end
  uniq_names.uniq 
end

def build_hash(list_names, data)
  new_hash = {}
  list_names.each do |name|
    new_hash[name] = {}
    data.each do |attributes, attr_hash|
    new_hash[name][attributes] ||= []
end
end
  new_hash
end

def fill_arrays(hash, data)
  data.each do |attr_key, attr_hash|
    attr_hash.each do |key, names|
      names.each do |name|
        hash[name][attr_key] << key.to_s
      end
    end
  end
hash
  end

def organize_pigeons(pigeon_data)
  names = get_uniq_names(pigeon_data)
  result = build_hash(names, pigeon_data)
  fill_arrays(result, pigeon_data)
end

puts organize_pigeons(pigeon_data)




