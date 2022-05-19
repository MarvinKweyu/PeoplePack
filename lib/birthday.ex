defmodule People.Birthday do
  import Plug.Conn
  alias People.Person

  def init(options), do: options

  def call(%Plug.Conn{params: %{"birthday" => birthday}} = conn, _opts) do
    actual_age = %Person{birthday: Date.from_iso8601!(birthday)} |> Person.age()

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Your #{actual_age} years of age")
  end
end
