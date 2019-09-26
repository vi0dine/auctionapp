defmodule Auction.FakeRepo do
  alias Auction.Item

  @items [
    %Item{
      id: 1,
      title: "My first item",
      description: "Fist item in FakeRepo",
      ends_at: ~N[2020-01-01 00:00:00]
    },
    %Item{
      id: 2,
      title: "Second item",
      description: "Another sample item in FakeRepo",
      ends_at: ~N[2019-01-02 01:00:00]
    },
    %Item{
      id: 3,
      title: "Last item",
      description: "Third item, and the last one",
      ends_at: ~N[2019-12-31 23:59:59]
    }
  ]

  def all(Item), do: @items

  def get!(Item, id) do
    Enum.find(@items, fn(item) -> item.id == id end)
  end

  def get_by(Item, map) do
    Enum.find(@items, fn(item) -> 
      Enum.all?(Map.keys(map), fn(key) -> 
        Map.get(item, key) == map[key] end
      end)
    end)
  end
end