# Automating the creation of attributes

class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  # def set_price(amount)
  def price=(amount) 
    @price = amount
  end

  def venue
    @venue
  end

  def date
    @date
  end
  
  def price
    @price
  end
end

# There’s one read/write attribute (price) and two read attributes (venue and date). It works, but the code is repetitive. Three methods look like this:
def something
  @something
end

# Ticket class, with getter and setter methods defined via attr_* calls
class Ticket
  attr_reader :venue, :date, :price
  attr_writer :price

  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

  def initialize(venue, date)
    if VENUES.include?(vanue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

# CREATING READER/WRITER ATTRIBUTES WITH ATTR_ACCESSOR
class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

