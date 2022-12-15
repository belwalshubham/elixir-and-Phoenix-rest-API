defmodule Exrest.Repo.Migrations.AddColumnsToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :description, :string
      add :college, :string
    end
  end
end
