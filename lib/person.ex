defmodule People.Person do
  defstruct first_name: nil,
            last_name: nil,
            birthday: nil,
            location: "home"

  def full_name(%__MODULE__{first_name: first_name, last_name: nil}) do
    "#{first_name}"
  end

  def full_name(%__MODULE__{} = person) do
    "#{person.first_name} #{person.last_name}"
  end

  def age(%__MODULE__{} = person) do
    days = Date.diff(Date.utc_today(), person.birthday)
    days / 365.25
  end

  # ensure Person structs are parsed to the functions

  def home(%__MODULE__{} = person) do
    %{person | location: "home"}
  end

  def away(%__MODULE__{} = person) do
    %{person | location: "away"}
  end

  defimpl Inspect do
    def inspect(%{first_name: first_name, last_name: last_name, location: location}, _) do
      "Person[#{first_name} #{last_name}, #{location}]"
    end
  end
end

# * Nota:Elixir.Access

# .exs files are meant to be used in an interactive shell and are not compiled
# .ex files , however, are compiled and added to the build folder
