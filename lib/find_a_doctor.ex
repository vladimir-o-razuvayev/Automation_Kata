defmodule FindADoctor do
  use Wallaby.DSL

  @looking_for Query.text_field("LOOKING_FOR_AUTOSUGGEST")
  @near Query.text_field("LOCATION_INPUT")
  @search_button Query.button("Search")

  def search_for(session, options \\ []) do
    if Keyword.has_key?(options, :looking_for) do
      fill_in(session, @looking_for, with: Keyword.get(options, :looking_for))
    end

    if Keyword.has_key?(options, :near) do
      fill_in(session, @looking_for, with: Keyword.get(options, :near))
    end

    click(session, @search_button)
  end
end
