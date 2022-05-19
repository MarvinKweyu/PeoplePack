defmodule People.Birthday do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{params: %{"birthday" => _birthday}} = conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "response of birthday")
  end
end
