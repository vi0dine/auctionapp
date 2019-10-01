defmodule Auction.Bid do
  use Ecto.Schema

  schema "bids" do
    field(:amount, :integer)
    belongs_to(:user, Auction.User)
    belongs_to(:item, Auction.Item)
    timestamps()
  end
end
