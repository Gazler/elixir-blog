defmodule Blog.RepoTest do
  use ExUnit.Case

  test "conf uses application config if defined" do
    config = [
      username: "user",
      password: "pass",
      hostname: "localhost",
      database: "testdb",
      port: 5342
    ]
    Application.put_env(:ecto, Blog.Repo, config)
    assert Blog.Repo.conf == config
  end
end
