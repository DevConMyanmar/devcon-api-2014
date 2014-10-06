defmodule Devcon.Speaker do
  use Ecto.Model

  validate speaker,
    name: present(),
    bio: present()

  schema "speakers" do
    field :name, :string
    field :bio, :string
  end
end
