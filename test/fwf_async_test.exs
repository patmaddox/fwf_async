defmodule FwfAsyncTest do
  defmodule FWFAsync_1 do
    use FwfAsync.TestCase, async: true

    test "enables flag" do
      name = "enables flag"
      :timer.sleep(1000)
      IO.puts("(#{name} - #{now()}) enabling foo")
      {:ok, true} = FunWithFlags.enable(:foo)
      IO.puts("(#{name} - #{now()}) enabling foo - done")

      :timer.sleep(3000)
      IO.puts("(#{name} - #{now()}) assert FunWithFlags.enabled?(:foo)")
      assert FunWithFlags.enabled?(:foo)
    end
  end

  defmodule FWFAsync_2 do
    use FwfAsync.TestCase, async: true

    test "disables flag" do
      name = "disables flag"
      IO.puts("(#{name} - #{now()}) disabling foo")
      {:ok, false} = FunWithFlags.disable(:foo)
      IO.puts("(#{name} - #{now()}) disabling foo - done")
      :timer.sleep(2000)
      IO.puts("(#{name} - #{now()}) refute FunWithFlags.enabled?(:foo)")
      refute FunWithFlags.enabled?(:foo)

      :timer.sleep(3000)
    end
  end
end
