defmodule SimpleTask.CLI do
  import Supervisor.Spec

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
    Supervisor.start_link([worker(SimpleTask, [])],
                          [strategy: :one_for_one, name: SimpleTask])
  end
end
