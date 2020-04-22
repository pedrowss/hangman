defmodule TextClient.Interact do
  alias TextClient.{State, Player}

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> Player.play()
  end

  defp setup_state(game) do
    %State{
      game_server: game,
      tally: Hangman.tally(game)
    }
  end
end
