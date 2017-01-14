Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id

      column :author, String
      column :content, :text
      column :published_at, DateTime
      column :title, String

      column :created_at, DateTime
      column :updated_at, DateTime
    end
  end
end
