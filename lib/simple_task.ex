defmodule SimpleTask do
  use GenServer

  def start_link() do
    IO.puts "start link"
    GenServer.start_link(__MODULE__, 0, name: __MODULE__)
  end

  def init(count) do
    IO.puts "init"
    schedule_count()

    {:ok, count}
  end

  def handle_info(:increment, count) do
    schedule_count()
    increment(count)

    {:noreply, count + 1}
  end

  def increment(count) do
    IO.inspect(count)
  end

  defp schedule_count do
    Process.send_after(self(), :increment, 2000)
  end
end
