defmodule MySuperApp.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
field :username, :string
field :email, :string
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email])
    |> validate_required([:username, :email])
    |> validate_length(:username, min: 3, max: 50)
    |> validate_format(:email, ~r(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$))
    |> unique_constraint(:email)
  end
end
