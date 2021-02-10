# User Attributes in database
# email:string
# password_digest:string
#
# has_secure_password also add atribbutes but virtual
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    # 
    has_secure_password

    # verifies the email exist before saving it into the database
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end