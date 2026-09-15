require "stringex"
class Jekyll < Thor
  desc "new", "create a new post"
  method_option :editor, :default => "subl"
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    filename = "_posts/#{date}-#{title.to_url}.markdown"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "tags:"
      post.puts "modified: "
      post.puts " "
      post.puts "image:"
      post.puts "  feature: stock-photo-man-dustin-scarpitti-unsplash.jpg"
      post.puts "  credit: Dustin Scarpitti / Unsplash"
      post.puts "  creditlink: https://unsplash.com/search/man?photo=SsvM8xfI66g"
      post.puts "---"
    end

    system(options[:editor], filename)
  end
end
