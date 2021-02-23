defmodule GustapayWeb.WelcomeController do
  use GustapayWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the Gustapay API")
  end
end
