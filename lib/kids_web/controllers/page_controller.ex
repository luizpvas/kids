defmodule KidsWeb.PageController do
  use KidsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
