defmodule Blog.Post do
  use Ecto.Model

  schema "posts" do
    field :name
    field :created_at, :datetime
    field :updated_at, :datetime
  end
end
