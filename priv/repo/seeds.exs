# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MySuperApp.Repo.insert!(%MySuperApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias MySuperApp.{Repo, Phone, Room}

rooms_with_phones = %{
  "3101" => ["0991122301", "0993344301"],
  "3102" => ["0990000302", "0991111302"],
  "3103" => ["0992222303"],
  "3104" => ["0993333304", "0994444304"],
  "3105" => ["0935555305", "09306666305", "0937777305"]
}

Repo.transaction fn ->
  rooms_with_phones
  |> Enum.each(fn {room, phones} ->
    %Room{}
    |> Room.changeset(%{room_number: room})
    |> Ecto.Changeset.put_assoc(
      :phones,
      phones
      |> Enum.map(&
        %Phone{}
        |> Phone.changeset(%{phone_number: &1})
      )
    )
    |> Repo.insert!()
  end)


  Repo.transaction fn ->
    %Room{} |>
    Room.changeset(%{room_number: 776})
      |> Repo.insert!()
    end

  MySuperApp.Repo.insert_all(
    Room,
    [
      %{room_number: 666},
      %{room_number: 1408},
      %{room_number: 237}
    ]
  )

  MySuperApp.Repo.insert_all(
    Phone,
    [
      %{phone_number: "380661112233"},
      %{phone_number: "380669997788"},
      %{phone_number: "380665554466"}
    ]
  )

  Repo.get(Room, 1)

end
