# Create a Scroll Component
Scroll = new ScrollComponent
	parent: Content
	size: Content.size
	scrollHorizontal: false

# Put the Posts inside the scroll component content
Posts.parent = Scroll.content
# Ensure the Posts layer is the same size as the Content layer
Posts.size = Content.size
