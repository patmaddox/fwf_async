defmodule FwfAsync.TestCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      def now() do
        DateTime.utc_now() |> DateTime.to_unix(:second)
      end
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(FwfAsync.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(FwfAsync.Repo, {:shared, self()})
    end

    :ok
  end
end
