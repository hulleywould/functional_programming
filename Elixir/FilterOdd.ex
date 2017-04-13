defmodule Solution do
    def filter_odd() do
        _ = IO.gets("")
        IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.take_every(2)
            |> Enum.map(&(&1 <> "\n"))
            |> IO.puts
    end
end
Solution.filter_odd