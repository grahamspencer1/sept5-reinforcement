require "httparty"

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json["objects"].each do |object|
  p object["name"]
end

p "---------------------------------------------"

toronto_elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')
toronto_elections_json = JSON.parse(toronto_elections_response.body)

toronto_elections_json["objects"].each do |object|
  p object["name"]
end

p "---------------------------------------------"

toronto_candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
toronto_candidates_json = JSON.parse(toronto_candidates_response.body)

toronto_candidates_json["objects"].each do |object|
  p object["name"]
end

p "---------------------------------------------"

toronto_representatives_response = HTTParty.get('https://represent.opennorth.ca/representatives/')
toronto_representatives_json = JSON.parse(toronto_representatives_response.body)

toronto_representatives_json["objects"].each do |object|
  p object["name"]
end
