defmodule Solution do
    def updatelist do
        _ = IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.map(&(String.to_integer(&1)))
            |> Enum.map(&(abs(&1)))
            |> Enum.map(&(Integer.to_string(&1) <> "\n"))
    end
end

Solution.updatelist |> IO.puts