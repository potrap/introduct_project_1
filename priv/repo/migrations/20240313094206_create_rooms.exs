defmodule MySuperApp.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :room_number, :integer, unique: true
    end
  end
end
