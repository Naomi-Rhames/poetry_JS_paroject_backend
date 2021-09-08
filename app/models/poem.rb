class Poem < ApplicationRecord
    belongs_to :category

    validates  :title, presence: true
    validates  :author, presence: true
    validates  :image_url, presence: true
    validates  :stanza, presence: true

end
