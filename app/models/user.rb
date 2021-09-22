class User < ApplicationRecord
    has_many :poems, dependent: :destroy

    validates :username, uniqueness: { case_sensitive: false }
end