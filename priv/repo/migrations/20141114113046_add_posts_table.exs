defmodule Blog.Repo.Migrations.AddPostsTable do
  use Ecto.Migration

  def up do
    "CREATE TABLE if NOT EXISTS posts(
      id serial primary key,
      name text,
      created_at date,
      updated_at date
    )"
  end

  def down do
    "DROP TABLE posts"
  end
end
