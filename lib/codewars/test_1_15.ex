defmodule Codewars.Test115 do
  def anagram?(word1, word2), do: sort_letters(word1) == sort_letters(word2)

  defp sort_letters(word) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end

  def divisors(num) do
    list = 2..num-1
    |> Enum.filter(fn x -> div(num,x) == num/x end)
    if list == [] do
     "#{num} is prime"
    else
      list
    end
  end

  def rgb(a, b, c), do: Base.encode16(<<a,b,c>>)
end
defmodule Experiments do
  defp comp_fib(0), do: [0 | 0]
  defp comp_fib(1), do: [1 | 0]
  defp comp_fib(n) do
      [h | t] = comp_fib(n-1)
      [h+t | h]
  end
  def fib(n), do: comp_fib(n)

  def is_valid_ip(ip) do
    String.split(ip,".")
    |> Enum.map(fn x -> Integer.parse(x) end)
    |> Enum.filter(fn {num, str} -> str == "" && is_valid_number(num) end)
    |> length == 4
    end

    defp is_valid_number(num) when num >= 0 and num <= 255, do: true
    defp is_valid_number(num), do: false
end

defmodule Kata do
  def high(str) do
str
|> String.split(" ")
|> Enum.map(fn x -> {Enum.reduce(~c(x),fn (a,b) -> a + b end)  , x} end)
|> Enum.sort()

  end
end
