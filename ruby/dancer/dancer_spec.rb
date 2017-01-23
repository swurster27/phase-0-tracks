require_relative 'Dancer'

describe Dancer do
  let(:dancer) { Dancer.new("Misty Copeland", 33) }

  it "pirouettes" do
    expect(dancer.pirouette).to eq "*twirls*"
  end

  it "bows to a partner" do
    expect(dancer.bow).to eq "*bows*"
  end

  it "has a readable name" do
    expect(dancer.name).to eq "Misty Copeland"
  end

  it "has a readable age" do
    expect(dancer.age).to eq 33
  end

  it "has a writeable age" do
    dancer.age = 34
    expect(dancer.age).to eq 34
  end

  it "keeps a readable dance card" do
    expect(dancer.card).to eq []
  end

  it "can queue parters on the dance card" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    expect(dancer.card).to eq ["Mikhail Baryshnikov"]
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
  end

  it "can start next dance from queue" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
    expect(dancer.card).to eq ["Anna Pavlova"]
  end

  it "stops adding names to queue when there are 10 names in queue." do
    dancer.queue_dance_with("partner1")
    dancer.queue_dance_with("partner2")
    dancer.queue_dance_with("partner3")
    dancer.queue_dance_with("partner4")
    dancer.queue_dance_with("partner5")
    dancer.queue_dance_with("partner6")
    dancer.queue_dance_with("partner7")
    dancer.queue_dance_with("partner8")
    dancer.queue_dance_with("partner9")
    dancer.queue_dance_with("partner10")
    dancer.queue_dance_with("partner11")
    expect(dancer.card).to eq ["partner1", "partner2", "partner3", "partner4", "partner5", "partner6", "partner7", "partner8", "partner9", "partner10"]
    expect(dancer.begin_next_dance).to eq ("Now dancing with partner1.")
    dancer.queue_dance_with("partner11")
    expect(dancer.card).to eq ["partner2", "partner3", "partner4", "partner5", "partner6", "partner7", "partner8", "partner9", "partner10", "partner11"]
  end

end