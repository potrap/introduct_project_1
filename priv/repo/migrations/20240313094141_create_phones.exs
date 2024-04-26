defmodule MySuperApp.Repo.Migrations.CreatePhones do
  use Ecto.Migration

  def change do
    create table(:phones) do
      add :phone_number, :string, unique: true
  end
 end
end
