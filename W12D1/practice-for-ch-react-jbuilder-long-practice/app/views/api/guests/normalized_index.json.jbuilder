json.guests do
    @guests.each do |guest|
        json.set! guest.id do
            json.id guest.id
            json.name guest.name
            json.age guest.age
            json.favorite_color guest.favorite_color
            json.gift_ids guest.gift_ids
        end
    end
end