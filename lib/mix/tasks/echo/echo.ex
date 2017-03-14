defmodule Mix.Tasks.Echo do
  use Mix.Task

  @shortdoc "A task that echos its output"
  def run([word]), do: IO.puts word
  def run([word, times]) do
    IO.puts(repeat(word, String.to_integer(times)))
  end

  defp repeat(_, 0), do: <<>>
  defp repeat(word, n) when is_integer(n) and n > 0 do
    word <> repeat(word, n - 1)
  end
end
