# Framer Workshop
Welcome to the **Intro to Prototyping with Framer** Zeitspace Session!
Let's make sure you're all set up.

## Setup

* Make sure you have the **Framer app** installed. You can download a 2-week free trial (https://framer.com/). Mac only.
* Download the project files in this Github repository, by clicking the `Clone or Download` and then `Download ZIP`. This file contains all the checkpoints for this workshop. 

[Screenshot here]

* Extract the ZIP file.
* Open Framer and ensure your trial is activated

## Step 1
In Framer, click **Open Project...** and navigate to `FramerWorkshop/Step1` folder and select `zeitbook1_begin.framer`.
You will see two artboards: `Home` and `PostsContainer`, as well as a black status bar.

* Create a Header at the top of the `Home` screen. (Use the "Frame" tool in the top left.)
  * Be careful not to let the Header overlap with the `Content` layer.
* Move the dark status bar (below the Home screen) to the Header.
* Put the Zeitspace logo and the text `ZEITBOOK` at the top.
* Add a plus button in the top right corner.

It should look like this when you're done:

[Screenshot]

Ensure the Header is pinned to the top, left, and right. This way it will be responsive if we stretch the screen.

[Screenshot]

If you've used Sketch before, this should be very familiar to you. So far there's not much here we couldn't do in Sketch.
Now, let's create a scrolling new feed using the `Posts` sitting inside the `PostsContainer`.

First, we will need to **target** some elements in our prototype, so that we can use them in the **Code** section.

* Target the `Content` layer inside the `Home` layer. Hover over the element in the sidebar, and click the blue bullseye button. If you now hover over the blue dot, you should see `**Content** in Code`.
* Similary, Target the `Posts` layer inside `PostsContainer`.
* Switch to the **Code** tab at the top of the window.
* Add the following code into the code area:
  ```
  # Create a Scroll Component
  Scroll = new ScrollComponent
    parent: Content
    size: Content.size
    scrollHorizontal: false

  # Put the Posts inside the scroll component content
  Posts.parent = Scroll.content
  ```
* Save the prototype and try it out in the device preview window (in the Code tab)

You should be able to scroll through the list of posts with a fixed header and footer! Voila!

> **Code Explanation**
> * In the code above, we are creating a ScrollComponent - a prebuilt component in Framer. (You can read more about the ScrollComponent here: https://framer.com/docs/#scroll.scrollcomponent)
> * We are placing it inside the `Content` layer by setting `parent: Content`.
> * We are setting the size to be exactly the size of the `Content` layer, by setting `size: Content.size`
> * By default, a ScrollComponent can scroll both vertically and horizontally, however, we only want to allow vertical scrolling. So we set `scrollHorizontal: false`.
> * We are then placing the `Posts` inside the `Scroll.content` layer.
