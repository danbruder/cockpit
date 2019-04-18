defmodule Cockpit.Payments.Payment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "payments" do
    field :amount, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(payment, attrs) do
    payment
    |> cast(attrs, [:amount, :title])
    |> validate_required([:amount, :title])
  end
end
