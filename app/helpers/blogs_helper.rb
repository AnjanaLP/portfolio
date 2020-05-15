module BlogsHelper

  def status_colour(blog)
    blog.draft? ? "warning" : "primary"
  end
end
