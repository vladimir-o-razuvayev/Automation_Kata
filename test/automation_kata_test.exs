defmodule AutomationKataTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  doctest AutomationKata

  feature "User can find a doctor", %{session: session} do
    session
    |> visit("https://www.ohiohealth.com/find-a-doctor")
    |> FindADoctor.search_for(looking_for: "Shane D Smith")
    |> assert_has(
      Query.css(".provider-box:first-of-type .specialties", count: 1, text: "Radiology")
    )
  end
end
