class Theme
  def self.all
    all = %w(blackboard default leo orion slice lacey glowworm).sort
    live = all & %w(default slice lacey)
  end
end
