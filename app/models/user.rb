class User < ApplicationRecord
  # adds virtual attributes for authentication
  has_secure_password

  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/.freeze
  # validates email
  validates :email, presence: true, uniqueness: true,
                    format: {
                      with: VALID_EMAIL_REGEX,
                      message: 'Invalid email',
                    }
end
