module PostsHelper
  def tag_cloud(tags)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f
      yield(tag,[index.round])
    end
  end
end
