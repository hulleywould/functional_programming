defmodule Solution do
    def listlen do
        _ = IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.count
    end
end

Solution.listlen |> IO.puts