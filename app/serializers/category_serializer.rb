class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :poems
end
