defmodule Solution do
    #get list area
    def getnum, do: _ = IO.gets("") |> String.strip |> String.to_integer
    #create 2D list
    def getlist(num) do
      _ = IO.read(:stdio, :all)
            |> String.strip
            |> String.split
            |> Enum.map(&(String.to_integer(&1)))
            |> Enum.chunk(num)
    end
    #find the primary diagonal
    def primdiag(list, 0, total) do
      num = Enum.at(list, 0) |> Enum.at(0) |> + total
    end
    def primdiag(list, out, total) do
      num = Enum.at(list, out) |> Enum.at(out)
      primdiag(list, out - 1, num + total)
    end
    #find the secondary diagonal
    def secdiag(list, 0, nbr, total) do
      num = Enum.at(list, 0) |> Enum.at(nbr) |> + total
    end
    def secdiag(list, out, inner, total) do
      num = Enum.at(list, out) |> Enum.at(inner)
      secdiag(list, out - 1, inner + 1, num + total)
    end
end

nbr = Solution.getnum
list = Solution.getlist(nbr)
prim = Solution.primdiag(list, nbr - 1, 0)
sec = Solution.secdiag(list, nbr - 1, 0, 0)
abs(sec - prim) |> IO.puts
