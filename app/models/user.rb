class User < ApplicationRecord
 
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    before_save { self.email = email.downcase if email.present? }

    validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

    protected

    def confirmation_required?
      false
    end
end
