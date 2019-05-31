defmodule SimpleTask.CLI do
  def main(args) do
    IO.puts "Running"

    run_commands(args)
  end

  def run_commands([]) do
    IO.puts "Please run again with a command"
  end

  def run_commands(["hello"]) do
    IO.puts "Hello World"
  end

  def run_commands(["start"]) do
    IO.puts "Starting job"
    SimpleTask.start_link()
    Process.sleep(20_000)
  end
end
