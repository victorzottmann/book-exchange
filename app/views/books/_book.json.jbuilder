json.extract! book, :id, :title, :description, :edition, :pages, :publication_date, :format, :availability, :author_id, :publisher_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
