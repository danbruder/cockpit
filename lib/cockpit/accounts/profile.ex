defmodule Cockpit.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "profiles" do
    field :avatar_url, :string
    belongs_to(:user, Cockpit.Accounts.User)

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:avatar_url, :user_id])
    |> validate_required([:avatar_url, :user_id])
  end
end
