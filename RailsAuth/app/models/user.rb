class User < ApplicationRecord
    before_validation :ensure_session_token
    validates :username, :session_token,  presence: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password_digest, length: {minimum: 6, allow_nil: true}



end
