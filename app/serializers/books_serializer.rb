class BooksSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :year, :publisher, :genre, :image_url
end
