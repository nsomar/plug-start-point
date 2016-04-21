defmodule {{cookiecutter.elixir_mod_name}}.Server do
  use Application

  def start(_type, _args) do
    port = Application.get_env(:{{ cookiecutter.project_name|lower|replace(' ', '-') }}, :server_port) |> String.to_integer

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, {{cookiecutter.elixir_mod_name}}.Router, [], port: port)
    ]

    IO.puts "\nServer started at:\nhttp://localhost:#{port}"
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
