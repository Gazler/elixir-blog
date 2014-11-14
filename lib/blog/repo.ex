defmodule Blog.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    Application.get_env(:ecto, Blog.Repo)
  end

  def priv do
    app_dir(:blog, "priv/blog")
  end
end
