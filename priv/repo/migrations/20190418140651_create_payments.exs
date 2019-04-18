defmodule Cockpit.Repo.Migrations.CreatePayments do
  use Ecto.Migration

  def change do
    create table(:payments) do
      add :amount, :integer
      add :title, :string

      timestamps()
    end

  end
end
