Sequel.migration do
  change do
    create_table(:songs) do
      primary_key :id
      String :title
      String :artist
      String :album
      String :genre
      String :length
    end
  end
end