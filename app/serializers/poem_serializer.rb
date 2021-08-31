class PoemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :stanza, :image_url, :category_id, :category
end