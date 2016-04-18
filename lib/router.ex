defmodule Sample.Router do
  use Plug.Router

  plug Plug.Logger, level: :info

  # plug Sample.Plug

  plug :match
  plug :dispatch

  get "/hello", do: send_resp(conn, 200, "world")

  match _, do: send_resp(conn, 500, "error")
end
