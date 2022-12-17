

json.array! @parties.each do |party|
    json.extract! party, :name, :location
    json.guests party.guests.map(&:name)
end