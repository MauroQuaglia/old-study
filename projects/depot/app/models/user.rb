class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password # Valida se la password inserita e il reinserimento di conferma coincidono.
  after_destroy :ensure_an_admin_remains # Se lancia eccezione fa il rollback

  private

  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user!"
    end
  end
end
