defmodule PhoenixTurbo.HandleTurboPlug do
  import Plug.Conn
  use Phoenix.Controller
  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    if PhoenixTurbo.ControllerHelper.turbo_stream_request?(conn) do
      conn
      |> put_root_layout(false)
      |> put_layout(false)
    else
      conn
    end
  end
end
