json.extract! taxonomic_table, :id, :kingdom, :division, :t_class, :order, :family, :gender, :species, :created_at, :updated_at
json.url taxonomic_table_url(taxonomic_table, format: :json)
