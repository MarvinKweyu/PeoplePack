defmodule People.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get("hello/:name", to: People.Hello)
  get("goodbye/:name", to: People.Goodbye)
  get("birthday/:birthday", to: People.Birthday)

  match _ do
    send_resp(conn, 404, "there is nothing here you creep!")
  end
end
