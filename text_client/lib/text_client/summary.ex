defmodule TextClient.Summary do
  def display(%{tally: tally}) do
    IO.puts([
      "\n",
      "Word so far: #{Enum.join(tally.letter, " ")}\n",
      "Guesses left: #{tally.turns_left}\n"
    ])
  end
end
