def fact(n)
  if n == 1
    n
  else
    n * fact(n-1)
  end
end

puts fact(5)


# Ruby program that renders html document to the console.
node1 = {
  :tag => "h1",
  :text => "Developers 💖 Ruby",
}
node2 = {
  :tag => "div",
  :children => [
    {
      :tag => "h2",
      :text => "The Ruby Language",
    },
    {
      :tag => "h3",
      :text => "heading 3",
    },
    {
      :tag => "p",
      :text => "Inner Paragraph",
    },
  ],
}
html = {
  :tag => "div",
  :children => [node1, node2],
}

def render(node)
  if node[:tag] == "h1"
    puts "**** #{node[:text].upcase} ****"
  elsif node[:tag] == "h2"
    puts "#{node[:text]} ;)"
  elsif node[:tag] == "p"
    puts "P: #{node[:text]}"
  elsif node[:tag] == "div"
    children = node[:children]
    children.each {|child| render(child)}
  end
end

render(html)
