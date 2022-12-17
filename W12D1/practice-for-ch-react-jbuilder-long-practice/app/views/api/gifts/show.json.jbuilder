json.extract! @gift, :title, :description
json.guest @gift.guest.name
json.gift @gift.title

