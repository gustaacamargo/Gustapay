defmodule Gustapay.Strings do
  def name_trim_and_lower_case(name) do
    handle_name(name)
  end

  defp handle_name(result) do
    if !is_binary(result) do
      result = Integer.to_string(result)
      result
    end

    result =
      result
      |> String.trim()
      |> String.downcase()

    {:ok, %{result: result}}
  end

  defp handle_name({:error, _reason}), do: {:error, %{message: "Invalid string!"}}

end
