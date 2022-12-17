json.array! @gifts.each do |gift|
    json.extract! gift, :title, :description
    json.party gift.party.name
end