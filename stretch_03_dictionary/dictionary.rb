class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}

  end

  def add({k: v = nil})

    @entries[k] = v

  end

  def keywords
    keys = []
    @entries.each do |k, v|
      keys << k
    end
    keys
  end
end
