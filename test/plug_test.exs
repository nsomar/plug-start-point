defmodule PlugTestTest do
  use ExUnit.Case
  use Plug.Test

  test "handles correct requests" do
    conn = conn(:get, "/hello")
    {status, _, body} = Sample.Router.call(conn, []) |> sent_resp

    assert status == 200
    assert body == "world"
  end

  test "handle error requests" do
    conn = conn(:get, "/error")
    {status, _, body} = Sample.Router.call(conn, []) |> sent_resp

    assert status == 500
    assert body == "error"
  end
end
