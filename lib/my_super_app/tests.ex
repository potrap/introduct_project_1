defmodule MySuperApp.Tests do

  def filter_by_age(users, age) do
    filter_by_age(users, age, [])
  end

  # Вспомогательная функция, которая фильтрует пользователей рекурсивно
  defp filter_by_age([], _, acc) do
    acc
  end
  defp filter_by_age([user | other_users], age, acc) do
    {_, _, _, user_age} = user
    if user_age > age do
      filter_by_age(other_users, age, acc ++ [user])
    else
      filter_by_age(other_users, age, acc)
    end
  end
end
