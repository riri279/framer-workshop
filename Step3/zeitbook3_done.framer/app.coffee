# Create a Flow Component
Flow = new FlowComponent
	backgroundColor: "#ffffff"
Flow.header = StatusBar
Flow.showNext(Splash)

# Create a Scroll Component
Scroll = new ScrollComponent
	parent: Content
	size: Content.size
	scrollHorizontal: false

# Put the Posts inside the scroll component content
Posts.parent = Scroll.content
# Ensure the Posts layer is the same width as the Content layer
Posts.width = Content.width

# Show the Home screen after a 1 second delay
Utils.delay 1, ->
	Flow.showNext(Home, scroll: false)

# Show the Home page when the Home Tab is tapped
TabHome.onTap ->
	Flow.showNext(Home, animate: false, scroll: false)

# Show the Chat page the Chat Tab is tapped
TabChat.onTap ->
	Flow.showNext(Chat, animate: false)

# Setup text states
PlaceholderText.states = 
	hidden:
		opacity: 0
	visible:
		opacity: 1
		
FinalText.states = 
	hidden:
		opacity: 0
	visible:
		opacity: 1

# Set default states
PlaceholderText.stateSwitch("visible")
FinalText.stateSwitch("hidden")

# Go to the Create Post screen
CreatePostButton.onTap ->
	# Reset states
	PlaceholderText.stateSwitch("visible")
	FinalText.stateSwitch("hidden")
	Flow.showNext(CreatePost)

# Switch states when tapping the keyboard
Keyboard.onTap ->
	PlaceholderText.animate("hidden")
	FinalText.animate("visible")

# Add a new post to the news feed
newPostCount = 0
PostButton.onTap ->
	Posts.height += 195
	OriginalPosts.y += 195
	NewPostCopy = NewPost.copy()
	NewPostCopy.parent = Posts
	NewPostCopy.y = 20 + (195 * newPostCount)
	NewPostCopy.width = Post1.width
	Scroll.updateContent()
	
	Flow.showPrevious(animate: false)
	newPostCount++

# Return back to the Home screen
CreatePostBack.onTap ->
	Flow.showPrevious()

# Show the Post Fullscreen screen when Post1 is tapped
Post1.onTap ->
	Flow.showOverlayCenter(PostFullscreen)

# Return back to the Home screen
ClosePostFullscreen.onTap ->
	Flow.showPrevious()

