class Product < ActiveRecord::Base
  validates(:title, :description, :image_url, presence: true) # i campi sono presenti e non vuoti
  validates(:price, numericality: {greater_than_or_equal_to: 0.01}) # il prezzo >= 0.01
  validates(:title, uniqueness: true) # il titolo non deve essere già presente su db.
  validates(:image_url, allow_blank: true,
            format: {
                with: %r{\.(gif|jpg|png)\Z}i,
                message: 'Must be a URL for GIF, JPG or PNG image.'
            })
end
