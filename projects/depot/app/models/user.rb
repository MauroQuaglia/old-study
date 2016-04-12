class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password # Valida se la password inserita e il reinserimento di conferma coincidono.
end
