class PoemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :author, :stanza, :image_url, :category_id, :category
end