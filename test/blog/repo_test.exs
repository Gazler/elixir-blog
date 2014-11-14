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

  test "conf uses DATABASE_URL if no application config defined" do
    db_url = "postgres://user2:pass2@host2:5433/db"
    expected_config = [
      username: "user2",
      password: "pass2",
      hostname: "host2",
      database: "db",
      port: 5433
    ]
    Application.put_env(:ecto, Blog.Repo, nil)
    System.put_env("DATABASE_URL", db_url)
    assert Blog.Repo.conf == expected_config
  end
end
