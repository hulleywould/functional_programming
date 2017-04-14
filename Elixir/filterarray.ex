defmodule Solution do
    def filter_array do
        num = IO.gets("") |> String.strip |> String.to_integer
        data = IO.read(:stdio, :all) |> String.strip |> String.split
        data
            |> Enum.map(&(String.to_integer(&1)))
            |> Enum.filter_map(&(&1 < num), &(Integer.to_string(&1) <> "\n"))
            |> IO.puts
    end
end
Solution.filter_array