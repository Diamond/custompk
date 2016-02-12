defmodule Custompk.Repo.Migrations.CreateExample do
  use Ecto.Migration

  def change do
    create table(:examples, primary_key: false) do
      add :example_id, :serial, primary_key: true
      add :message, :string

      timestamps
    end
  end
end
