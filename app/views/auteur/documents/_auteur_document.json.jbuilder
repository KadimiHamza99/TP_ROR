json.extract! auteur_document, :id, :titre, :auteur_id, :created_at, :updated_at
json.url auteur_document_url(auteur_document, format: :json)
