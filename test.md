# Introduction

As the product matures and direction in the market is focused Fuse is shifting away from a do-it-yourself touch application builder to more of a template driven touch application content management system. Fortunately, it can be argued this actually makes development of the product easier - as we can focus more on providing a sharper experience for the customer more honed in on actual need. We anticipate creating vertical specific apps that serve as complete solutions for the customer - that is to say they won't have to do any page linking, image placement, text module placement. The modules now become internal tools for Horizon Display to use to build and modify pages for template apps.

Key to the success of this transition will be the expansion of the list/tagging system that was started as the directory application for modi. This list module in the CMS will be central to the verticals we are targeting.
```
Scenario: Vida at Horizon Display lands a high-end pet food store as a customer. The store wants to use a display to lead a customer through a series of decisions to determine which type of food will be best for their pet (**guided experience**), display information on all their products (**item listing**), allow a user to filter their products based on criteria (**filtering**), allow a user to compare products (**compare**), show expanded information on a product (**popout**), and give general information about the business (**static**).
```
Most of these tasks can be achieved by leveraging tags. Using a list tool Vida can enter product information and tag each product with representative tags. These tagged products will serve as the content for the app.

## Supporting Q/A

- What is a vertical specific app?
  - Vertical specific apps are targeted for specific users or a niche, unlike horizontal applications (fuse to this point), which are created with a broader audience in mind. Presently, HD is targeting craft beer breweries and marijuana dispensary "verticals" that will focus on educating a user and promoting products.

# End to End Experience


# Large Objectives
1. Need "click to sync with cloud" functionality to be added to the cms. With more and more list based data being able to send updates to metro on demand is essential.
2. Image, Text, Video, Button modules need to have dynamic, flexible sizing. Cannot be restricted to set resolutions - need to accept an X and Y and create at that size.
3.
4. Need a new layout style that allows for custom site maps (outside of any hierarchy). Treat all pages as unlinked and allow a user to create unlimited blank, unlinked pages to be linked together using a function similar to the existing "go to page". This will allow HD users to build any type of site experience from scratch using the modules to drive.
```
Scenario: Vida logs into Fuse and clicks the + next to may apps to create a new app. She gives the app a name, selects landscape, then instead of choosing a layout style she selects "blank" and is passed through. Instead of Tier 1 Page with categories - there is a single blank canvas that can accept any module. She configures this page to be a greeting screen with an image.png that says touch here. She sets the properties of image.png to be go to page -> and selects new page. She is asked to name the new page and types "splash2" in the pop-up. She is routed to another blank canvas with all the modules available. This process can be repeated indefinitely to make any type of site map.
```
4. Populate any "list" via .csv file. Will be a task, but will be essential to come up with a way for users to upload a csv from a list cms screen and have it populate. We can provide the instructions for properly formatting a csv to our requirement. Some businesses have a lot of high-end pet food and having them manually manage it in this cms will be too redundant.


# Small Objectives
1. Ensure URL routing on fuse.horizondisplay.com is updated to match the correctly working fusedev.horizondisplay.com routing.
2. Ensure login credentials can be saved on the metro side.
3. Enable dynamic application ids with the structure first 2 letters of app name + appid# (MO158) (MO162) are examples of two modi apps.
4. Remove "Created by" and replace with "Last Modified on" and include time of last modification.
![appid](img/appid.png)
5. No size restrictions on background images (up to size of canvas)
6. No text character input restrictions, yes there will be problems with bleedover, but that can be corrected case by case
7.

Features:
Menu (CMS)
Pop outs (CMS data)
Product compare (CMS data)
Product filtering (CMS tags)
"Guided Experiences"


User Levels

need capability to access control features based on account tier
