class Poem < ApplicationRecord
    belongs_to :category
    belongs_to :user
    
    validates  :title, presence: true
    validates :genre, presence: true
    validates  :author, presence: true
    validates  :image_url, presence: true
    validates  :stanza, presence: true

end
