defmodule Custompk.ExampleTest do
  use Custompk.ModelCase

  alias Custompk.Example

  @valid_attrs %{example_id: 42, message: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Example.changeset(%Example{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Example.changeset(%Example{}, @invalid_attrs)
    refute changeset.valid?
  end
end
