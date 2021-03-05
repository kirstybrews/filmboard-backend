class User < ApplicationRecord
    has_secure_password
    PASSWORD_FORMAT = /\A
        (?=.{8,})          # Must contain 8 or more characters
        (?=.*\d)           # Must contain a digit
        (?=.*[a-z])        # Must contain a lower case character
        (?=.*[A-Z])        # Must contain an upper case character
        (?=.*[[:^alnum:]]) # Must contain a symbol
    /x
    validates :username, 
        uniqueness: { case_sensitive: false },
        presence: true

    validates :password, 
        presence: true, 
        length: { in: 6..15 }, 
        format: { with: PASSWORD_FORMAT }, 
        confirmation: true, 
        on: :create
     
    validates :name, presence: true
    has_many :job_postings
    has_many :applications
end
