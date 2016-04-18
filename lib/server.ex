defmodule Sample.Server do
  use Application

  def start(_type, _args) do
    port = Application.get_env(:plug_sample, :server_port)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Sample.Router, [], port: port)
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
