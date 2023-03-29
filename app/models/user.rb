# frozen_string_literal: true

class User < ApplicationRecord
    validates :name,  :email, :birth_date, presence: true
    validates :name, length: { minimum: 3 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end