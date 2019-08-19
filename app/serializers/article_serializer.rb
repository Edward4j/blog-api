class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :price, :isbn
end
