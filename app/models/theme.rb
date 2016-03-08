class Theme
  def self.all
    all = %w(blackboard default leo orion slice lacey glowworm flatro wired glacial).sort
    live = all & %w(default slice lacey glowworm flatro wired glacial)
  end
end
