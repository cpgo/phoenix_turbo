defmodule PhoenixTurbo.HandleTurboPlug do
  import Plug.Conn

  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    if PhoenixTurbo.ControllerHelper.turbo_stream_request?(conn) do
      put_layout(conn, false)
    else
      conn
    end
  end
end
