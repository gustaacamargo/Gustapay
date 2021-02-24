defmodule Gustapay.Users.Create do
  alias Gustapay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
