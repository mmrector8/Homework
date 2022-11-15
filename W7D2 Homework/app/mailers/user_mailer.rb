class UserMailer < ApplicationMailer
    default from: "Morgan morgan@cats.com"
    def welcome_email
        @user = user
        @url = 'http://example.com/login'
        mail(to: @user.email, subject: 'Welcome to cat land!')
    end
end
