defmodule People.PersonTest do
  # nota use of exs thus no compilation

  use ExUnit.Case
  alias People.Person

  test "full_name/1" do
    person = %Person{
      first_name: "Ryan",
      last_name: "Gossling"
    }

    assert person |> Person.full_name() == "Ryan Gossling"
  end

  test "full_name/ with mononyms" do
    teller = %Person{
      first_name: "Teller"
    }

    assert teller |> Person.full_name() === "Teller"

    madonna = %Person{
      first_name: "Madonna"
    }

    assert madonna |> Person.full_name() === "Madonna"
  end
end
