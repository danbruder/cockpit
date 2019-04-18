defmodule Cockpit.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :user_id, :string
    field :username, :string, size: 20
    field :meta, :map
    field :email, :string
    field :password_hash, :string
    field :successful_login_attempts, :integer
    field :confirm_id, :string
    field :password_reset_key, :string
    field :password_reset_expire, :integer
    field :confirmed, :boolean
    has_one(:profile, Cockpit.Accounts.Profile)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
