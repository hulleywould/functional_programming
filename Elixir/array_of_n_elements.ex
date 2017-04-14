defmodule Solution do
    def main(1), do: [0]
    def main(n), do: [n - 1 | main(n - 1)]
end

num = IO.gets("") |> String.strip |> String.to_integer
Solution.main(num) |> Enum.reverse |> IO.inspect(limit: :infinity)