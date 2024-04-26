defmodule MySuperApp.Accounts do
  alias MySuperApp.{User, Repo}

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
end
end
