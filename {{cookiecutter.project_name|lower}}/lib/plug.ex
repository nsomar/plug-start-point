defmodule {{cookiecutter.elixir_mod_name}}.Plug do
  import Plug.Conn

  def init(opt), do: opt

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World!")
    |> halt
  end
end
