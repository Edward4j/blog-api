class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author, :price, :isbn
end
