
json.partial! "api/guests/guest", guest: @guest

json.gifts @guest.gifts.each do |gift|
    json.extract! gift, :title, :description, :party
end