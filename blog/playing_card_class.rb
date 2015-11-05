class PlayingCards

  def initialize(players)
    @players = players
    @cards = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    @new_deck = []
  end

  def hearts
    @cards.collect {|x| x.to_s + "-Hr"}
  end

  def spades
    @cards.collect {|x| x.to_s + "-Sp"}
  end

  def diamonds
    @cards.collect {|x| x.to_s + "-Di"}
  end

  def clubs
    @cards.collect {|x| x.to_s + "-Cl"}
  end

  def make_deck
    heart_stack = hearts
    spade_stack = spades
    diamond_stack = diamonds
    club_stack = clubs
    full_deck = heart_stack + spade_stack + diamond_stack + club_stack
    full_deck.shuffle
  end

  def new_game
    @new_deck = make_deck
    @players.times do
      deal_blackjack
    end
  end

  def deal_blackjack
    hand = []
    2.times do
      hand << @new_deck.shift
    end
    p hand
  end

end

deck = PlayingCards.new(5)

deck.new_game
