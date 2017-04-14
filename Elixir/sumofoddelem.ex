defmodule Solution do
    def sumofoddelem do
        _ = IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.map(&(String.to_integer(&1)))
            |> Enum.filter(&(rem(&1, 2) != 0))
            |> Enum.reduce(&(&1 + &2))
    end
end

Solution.sumofoddelem |> IO.inspect