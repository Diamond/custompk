defmodule Custompk.Example do
  use Custompk.Web, :model

  @primary_key {:example_id, :id, autogenerate: true}
  @derive {Phoenix.Param, key: :example_id}

  schema "examples" do
    field :message, :string

    timestamps
  end

  @required_fields ~w(message)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
