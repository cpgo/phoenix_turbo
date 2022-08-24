defmodule PhoenixTurbo.HandleTurboPlug do
  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    if PhoenixTurbo.ControllerHelper.turbo_stream_request?(conn) do
      conn
      |> Phoenix.Controller.put_root_layout(false)
      |> Phoenix.Controller.put_layout(false)
    else
      conn
    end
  end
end
