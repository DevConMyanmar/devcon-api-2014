defmodule Repo do
  use Ecto.Repo , adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://admin:postgres@localhost/devcon"
  end

  def priv do
    app_dir(:devcon, "priv/repo")
  end

end
