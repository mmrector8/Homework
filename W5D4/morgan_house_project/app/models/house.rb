class House < ApplicationRecord
    validates :address, presence: true
    validate :check_address
    
    def check_address
        unless self.address.length > 5
            raise 'invalid address'
        end
    end

    has_many(
        :person,
        primary_key: :id,
        foreign_key: :person_id,
        class_name: 'Person'
    )
end
