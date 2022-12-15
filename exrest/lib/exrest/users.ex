defmodule Exrest.Users do
  @moduledoc """
  The Users context.
  """

  import Ecto.Query, warn: false
  alias Exrest.Repo

  alias Exrest.Accounts.User

  @doc """
  Returns the list of user.
  ## Examples
      iex> list_user()
      [%User{}, ...]
  """
  def list_all_users do
    Repo.all(User)
  end

  @doc """
  Creates a user.
  ## Examples
      iex> create_user(%{field: value})
      {:ok, %User{}}
      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
