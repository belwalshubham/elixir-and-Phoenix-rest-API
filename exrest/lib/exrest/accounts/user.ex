defmodule Exrest.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :description, :string
    field :college, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    required_fields = [:name, :description, :college]
    user
    |> cast(attrs, required_fields)
  end
end
