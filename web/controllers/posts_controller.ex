defmodule Blog.PostsController do
  use Phoenix.Controller

  plug :action
  plug :render

  def index(conn, _params) do
    conn
    |> put_layout(:main)
    |> assign(:posts, posts)
  end

  defp posts, do: Blog.Repo.all(Blog.Post)
end
