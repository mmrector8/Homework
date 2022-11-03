class Person < ApplicationRecord
    validates :name, presence: true
    validate :check_length_name

    def check_length_name
        unless self.name.length > 1
            errors[:name] << 'name is too short, must be longer'
        end
    end

    belongs_to(
        :house, 
        primary_key: :id,
        foreign_key: :house_id,
        class_name: 'House'
        )
end
