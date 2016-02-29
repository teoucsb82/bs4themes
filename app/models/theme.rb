class Theme
  def self.all
    all = %w(blackboard default leo orion slice v1).sort
    live = all & %w(default slice v1)
  end
end
