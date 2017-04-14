defmodule Solution do
    def reverse() do
        _ = IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.reverse
            |> Enum.map(&(&1 <> "\n"))
    end
end

Solution.reverse |> IO.puts