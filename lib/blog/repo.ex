defmodule Blog.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres
  require Logger

  def conf do
    case Application.get_env(:ecto, Blog.Repo) do
      nil    -> System.get_env("DATABASE_URL") |> url_from_env |> parse_url
      config -> config
    end
  end

  def priv do
    app_dir(:blog, "priv/repo")
  end

  defp url_from_env(nil) do
    """
    Missing database config. Please either specify a `DATABASE_URL` or create \
    a `config/database.exs` file.
    """ |> Logger.error
  end
  defp url_from_env(url), do: url
end
