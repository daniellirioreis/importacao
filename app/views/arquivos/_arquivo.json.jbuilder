json.extract! arquivo, :id, :caminho_do_arquivo, :created_at, :updated_at
json.url arquivo_url(arquivo, format: :json)