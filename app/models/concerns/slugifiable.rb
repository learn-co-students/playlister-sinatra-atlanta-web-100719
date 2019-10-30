module Slugifiable
  def slug
    name.parameterize
  end
end
