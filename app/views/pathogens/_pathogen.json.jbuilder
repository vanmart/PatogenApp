json.extract! pathogen, :id, :name, :scientific_name, :description, :epidemiology, :economic_damage, :created_at, :updated_at
json.url pathogen_url(pathogen, format: :json)
