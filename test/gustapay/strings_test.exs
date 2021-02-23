defmodule Gustapay.StringsTest do
  use ExUnit.Case

  alias Gustapay.Strings

  describe "name_trim_and_lower_case/1" do
    test "when there is a string or integer, returns an string in lowercase and without spaces" do
      response = Strings.name_trim_and_lower_case("GuStAvO")

      expected_response = {:ok, %{result: "gustavo"}}

      assert response == expected_response
    end
  end
end
