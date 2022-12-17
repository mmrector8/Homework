json.parties do
    json.set! @party.id do 
        json.id @party.id
        json.name @party.name
        json.location @party.location
        json.guest_ids @party.guest_ids
        json.guest_ids @party.gift_ids
    end
end

json.guests do 
    @party.guests.each do |guest|
        json.set! guest.id do
            json.id guest.id
            json.name guest.name
            json.age guest.age
            json.favorite_color guest.favorite_color
            json.gift_ids guest.gift_ids
        end
    end
end

json.gifts do
    @party.gifts.each do |gift|
        json.set! gift.id do
            json.id gift.id
            json.title gift.title
            json.description gift.description
            json.party_id gift.party_id
            json.guest_id gift.guest_id
        end
    end
end