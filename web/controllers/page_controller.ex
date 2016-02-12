defmodule Custompk.PageController do
  use Custompk.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
