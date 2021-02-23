defmodule GustapayWeb.StringController do
  use GustapayWeb, :controller

  alias Gustapay.Strings

  def index(conn, %{"name" => name}) do
   name |> Strings.name_trim_and_lower_case() |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn |> put_status(:ok) |> json(%{message: "Here is your string: #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn |> put_status(:bad_request) |> json(reason)
  end
end
