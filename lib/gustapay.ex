defmodule Gustapay do
  alias Gustapay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
