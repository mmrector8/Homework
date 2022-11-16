require 'rails_helper'

RSpec.describe User, type: :model do
   before do
    driven_by(:rack_test)
  end

  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password) > 6}

  
end
