ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Custompk.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Custompk.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Custompk.Repo)

