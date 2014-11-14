defmodule Blog.Repo.Migrations.AddPostsTable do
  use Ecto.Migration

  def up do
    "CREATE TABLE if NOT EXISTS posts(
      id serial primary key,
      name text,
      created_at timestamp default CURRENT_DATE,
      updated_at timestamp default CURRENT_DATE
    )"
  end

  def down do
    "DROP TABLE posts"
  end
end
