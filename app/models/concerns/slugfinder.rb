module Slugfinder
  def find_by_slug(slug)
    self.all.find do |object|
      slug == object.slug
    end
  end
end
