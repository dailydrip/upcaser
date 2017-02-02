defmodule UpcaserTest do
  use ExUnit.Case

  test "starting the service" do
    assert {:ok, upcaser_pid} = Upcaser.start
    assert is_pid(upcaser_pid)
  end

  test "sending a string to be upcased" do
    # Start the service
    {:ok, upcaser_pid} = Upcaser.start
    # Send a string and get the expected response
    assert {:ok, "FOO"} = Upcaser.upcase(upcaser_pid, "foo")
  end
end
