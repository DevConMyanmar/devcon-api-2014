defmodule Repo.Migrations.CreateSpeakers do
  use Ecto.Migration

  def up do
  " CREATE TABLE speakers(
      id serial primary key,
      name varchar(40),
      bio varchar(140)
    )"
    end

  def down do
    ""
  end
end
