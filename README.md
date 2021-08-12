# GuitarBay

![GuitarBay logo](https://i.imgur.com/yTv27uQ.png)

### Overview

GuitarBay is a two-sided marketplace designed for users to buy and sell guitars on a platform specifcally designed for that purpose.

Deployed app: https://guitarbay.herokuapp.com/

GitHub repo: https://github.com/djh900/GuitarBay/

Presentation video: https://youtu.be/2dtD5nZIf2I

### Problem Being Solved

Surprisingly, there are few websites out there dedicated to buying and selling guitars. In Australia, your options are limited to either apps such as Facebook Marketplace and Gumtree, where security is extremely relaxed and a payment platform not provided, or the generic marketplace websites already out there such as eBay. The problems with using apps like eBay for buying and selling guitars include:

##### Specific details unable to be or not required to be provided

A typical guitar listing on eBay contains the following fields under ‘item specifics’:

- Condition
- Type
- Model Year
- Brand
- Series

As anyone who’s dealt with guitars before knows, these ignore crucial details when it comes to buying a guitar, such as country of manufacture, electronics, what type of wood it’s made out of. If these aren’t included in the items description, there’s essentially no way of knowing what the true value of that guitar is, or even if it’s a guitar you want to buy.

##### High commissions

Ebay is notably expensive, with a 10.9% commission fee on all items, regardless of their price. Further, eBay charges more fees if you want to post more than 40 listings per month. Ontop of the 10.9% commission, you need to pay PayPal a commission if your item is bought via that platform.

Guitars are expensive, and a large profit margin can be obtained even with a significantly smaller commission than the one taken by eBay.

### Why this problem needs solving

There is a hole in the marketplace for this product and it will fulfil the needs of Austrlaian musicians to buy and sell their guitars in a safe, secure, modern way. This platform can protect the safety of users through secure payments, as well as their wallets by providing a cheap alternative to selling their guitar on eBay or at the pawn shop. Further, guitars by nature are an expensive product, and even with low commissions there is a high profitability in this model.

### Competition

The primary website other than eBay for buying/selling guitars is a site called Reverb. However, Reverb is based in the USA, all its prices are in USD, much of its items for sale are located in the USA making shipping infeasible, and the website prioritizes stores selling items over individual sellers.

A website called Guitarboss also exists in Australia however whether it continues to operate is unclear - its social media pages haven’t been updated since 2018 and its listings don’t have a date they were posted. Further, Guitarboss shares the same lack of features problem eBay has.

### Description of the app

##### Purpose

The purpose of GuitarBay is to provide a safe, secure, low-cost method by which Australian musicians can buy and sell guitars. Competing with the traditional methods of guitar sales such as eBay, Gumtree, Facebook Marketplace and second-hand shops, GuitarBay provides a method of guitar buying-and-selling which has many advantages. Further, large profits can be generated for the website even with low commissions, as guitars are generally expensive items.

##### Features

GuitarBay provides many great features to its users, including:

- The ability to see all guitars currently for sale and search by model
- Being able to list guitars for sale with a high level of detail
- Purchasing guitars with secure payment through Stripe
- The ability to message a user who has a listing (via email)
- A 'My Account' page showing the user's listings and their status, and the ability to edit and delete these listings
- A help page with FAQs, the condition guide and a link to Australian-based email support

##### Sitemap

Items in red can only be accessed if a user is signed in

![Sitemap](https://i.imgur.com/X6926j5.png)

##### Screenshots

Homepage - No user signed in

![Homepage - No user signed in](https://i.imgur.com/d0u5tOz.png)

Homepage - User signed in

![Homepage - User signed in](https://i.imgur.com/qwDTld4.png)

Listings page

![Listings page](https://imgur.com/R0ezxk6)

Individual listing page

![Individual listing page](https://i.imgur.com/6WJs8hj.png)

Create a listing

![Create a listing](https://i.imgur.com/7tJxd94.png)

My account page

![My account](https://i.imgur.com/3orZLW7.png)

Help page

![Help page](https://i.imgur.com/wMUvCJ4.png)

##### Target audience

The target audience of GuitarBay is Australian musicians looking to buy or sell guitars, both new and second-hand, on a low-cost, easy to use, secure platform.

Say for instance, you are a muso looking to sell your guitar. Sure, you could take it to the local pawn or swap shop for a cheap buck, or list it on eBay and hope someone pays what you're asking (or, even worse, list it as an auction). But in either scenario, you wouldn't be extracting the maximum value out of it - Even if you got a good price on eBay, eBay and PayPal commissions would eat into your profit. Ofcourse, if you weren't wanting to pay any commission, you could list it on Facebook Marketplace, GumTree or the Trading Post, but these sites lack security and have no in-built payment methods, which leaves both sellers and buyers open to fraud. This is the hole in the market GuitarBay fills. The audience it targets is musicians looking for great deals on both buying and selling their guitars.

##### Tech stack

The development tools used in creating GuitarBay are:

Application and Data

- HTML
- CSS
- Sass
- Ruby
- Rails
- Amazon S3 (image upload and storage)
- Heroku (deployment and hosting)
- PostgreSQL (database)
- Stripe (payments)

DevOps

- VS Code (code editor)
- GitHub (version control)
- Trello (task management)
- Cacher (code snippets)

### User Stories

Users of GuitarBay are able to:

- As a person without an account, I can register and create an account so that I can use the website features and list and purchase items
- As a user, I can list a guitar for sale
- Regardless of whether I have an account, I can view all the guitars available for sale
- Regardless of whether I have an account, I can search through the guitars listed for sale
- As a user, I can purchase a guitar
- As a user, I can message the seller of a guitar via email
- As a user, I can view, edit and delete my own listings
- As a user, I can edit my account details or delete my account

GuitarBay users are all one type - The same user can both buy and sell guitars. There is no separata account needed.

### Wireframes

##### Desktop

![Homepage - No user signed in](https://i.imgur.com/bzYXguX.png)

![Homepage - User signed in](https://i.imgur.com/US2krjE.png)

![Listings index page](https://i.imgur.com/kKPtUWv.png)

![Listings show page](https://i.imgur.com/gRAxHIF.png)

![My listings](https://i.imgur.com/REhHOWp.png)

![Create a listing](https://i.imgur.com/O73oLH7.png)

![My account](https://i.imgur.com/haINrmf.png)

![Help page](https://i.imgur.com/bPJI38T.png)

##### iPad

![Homepage - No user signed in - iPad](https://i.imgur.com/VV3qGq0.png)

![Listings index page - iPad](https://i.imgur.com/wUodYNN.png)

![Listings show page - iPad](https://i.imgur.com/HtXHWba.png)

![Create a listing - iPad](https://i.imgur.com/iph7FYJ.png)

![My account - iPad](https://i.imgur.com/4rlCTkL.png)

![Help page - iPad](https://i.imgur.com/8aUKHX3.png)

##### Mobile

![Homepage - mobile](https://i.imgur.com/Hpe4N8v.png)

![Listings index page - mobile](https://i.imgur.com/gKK3qyu.png)

![Listings show page - mobile](https://i.imgur.com/FRdRV3Q.png)

![Create a listing - mobile](https://i.imgur.com/OWGmhLp.png)

![My Account - mobile](https://i.imgur.com/8g8VM26.png)

![Help page - mobile](https://i.imgur.com/6w0imFp.png)

### ERD

![ERD](https://i.imgur.com/tcLQ4mQ.png)

### High level components

Like any Rails app, GuitarBay's high level components can be separated into models, views and controllers.

##### Models

GuitarBay has fourteen models, however ten of these exist solely as features for listings, and two of these relate to active record and image uploading. We are left with the main two models behind GuitarBay: Users and Listings.

The users model holds the details for registered users, such as email, username and password. Registered users can then create listings. The listings each have 22 attributes, 10 of which are foreign keys - they point to other models which contain features. For example, when creating a new listing, users are asked to specify a delivery option. They are given the option to pick from the attributes in the delivery model, such as pickup only or delivery included.

The listings model also holds a foreign key to active record attachments, which itself holds a foreign key to active record blobs. These allow an image to be uploaded with the listing, which in turn is uploaded to Amazon Web Services S3.

##### Views

The front-end of GuitarBay comprises the views. GuitarBay has four views relating to listings, with the backend logic contained in the listings controller - index, new, edit and show. GuitarBay also has four views under the pages controller - home, my account, help and successful payment. Finally, GuitarBay has views provided by the Devise gem used for authorization, such as log in and register. There is also a shared view for the navbar, which appears on every page.

The views are HTML pages with embedded ruby, and access data in the database through the controllers, explained below. For example, the index view accesses all the data in the listings model through the index method in the listings controller. The index view then loops through each listing and displays some of its data, such as manufacturer, model and price.

The views, when accessed by someone using the website, are compiled into HTML and rendered by the user's web browser. They also have CSS styling through Sass. There is also some minor JavaScript in use on the listings show page in order to get the 'buy now' button working.

##### Controllers

The controller can be thought of as the 'middle man' between the models and views. Their primary role is to retrieve data from the database through the models, and pass this data to the views. They also have some secondary functions in the GuitarBay app which will be explained below.

GuitarBay has two controllers: Listings and Pages. The listings controller deals with all CRUD actions involved in the listings through the seven basic RESTful routes. This allows users to Create, edit, update and delete listings, so long as they have the permissions to do so. The show method in the listings controller also created a new Stripe session when a show page is loaded, allowing them to buy the item.

The pages controller deals with all the methods that don't fall under the category of listings - The home and help pages, which are quite static (although the homepage varies slightly if a user is signed in), the my account page and the successful payment page. The method for the my account page passes the user's account details and listings to the my account view, while the successful payment page tells the buyer which item they have purchased.

The pages controller also contains a webhook method - When a successful payment is made, Stripe accesses this method, allowing the item to be listed as 'sold' (the sold attribute of the listing changes from false to true).

### Third party services

GuitarBay makes use of four third-party services: Amazon Web Services S3, Heroku, Stripe and Devise.

##### Amazon Web Services S3

AWS S3 allows images uploaded by users with their listings to be held externally, rather than on the website's server - server space is expensive, and web hosting services probably won't allow this to happen. The images are held in a 'bucket' on Amazon's servers which can be accessed and modified by our app.

##### Heroku

Heroku is a platform as a service (or PaaS) app that hosts the GuitarBay application. Heroku allows continuous deployment of the app through git, and the ability to hold databases through PostgreSQL. As a result, the entire GuitarBay app, including its database, can be hosted on Heroku. Further, Heroku is highly scalable - whilst the app is currently running on a basic plan, it can easily be expanded to handle large amounts of traffic, users and data.

##### Stripe

Stripe is the third-party platform that handles user payments on GuitarBay. A third-party platform is used to ensure GuitarBay complies with all legal and regulatory requirements, including the Payment Card Industry Data Security Standard (PCI DSS). Stripe takes a commission from payments (1.75% for domestic card payments), however this is a low price to pay, even in the long run, for the expense of creating a payment platform specific to GuitarBay.

Stripe also offers a number of features that couldn't be built ourselves, such as automatic dispute handling, 24x7 support and allowing payments through products like Afterpay.

##### Devise

Devise is the code used for authentication in GuitarBay. It is a gem specifically created for authentication in Ruby on Rails apps. This allows users to create accounts, log-in and so on, as well as allowing the app itself to interact with these users (for example, users can create listings and buy products).

Devise has a number of features that can be 'switched on' not currently used on GuitarBay however can be easily integrated, such as email confirmaiton upon signup, timing out sessions once a user is logged in for a certain amount of time without being active, and locking accounts after a number of failed sign-in attempts.

### Models and Relations

As mentioned above, GuitarBay has fourteen database models, however only two of these really matter - The listings and users models.

The user model keeps track of the app's users, and has a one-mandatory to many-optional relation to the listings model - a user can have none or many listings, but a listing must have a user.

The listing model, the other main model in GuitarBay, keeps track of all the guitars both for sale and sold in the app. Each listing has the user it belongs to, as well as 22 attributes. Detailing these attributes will give a good idea of GuitarBay's overall database structure.

Eleven of the listing's attributes are standalone items, such as the price (as an integer) and the location (as a string). The other 11 are foreign keys to other models - 10 of which are features, the final deals with the images attached.

The listing model references 10 other models through foreign keys that can be thought of as features - For example, the manufacturers model details a number of manufacturer's names the listing can have. The listing attribute for manufacturer_id then references the manufacturer listing's ID through a foreign key.

The relation between listings and the features models is many-optional to one-mandatory. A listing must have a manufacturer, for example. In the case where the feature is optional to the listing, such as 'material', the wood the guitar is made out of, a blank string is used if the user doesn't want to specify this feature. As a result, the relation to all the features tables is many-optional to one-mandatory, even if it appears that the relation is many-optional to one-optional.

It's also important to note how this relationship is described in the app's code; each feature 'has many' listings, but the listing is described as 'belonging to' each feature, a result of the foreign-key associations used, even if in reality it the features 'belong to' the listing model.

The final attribute that needs to be mentioned is the image - each listing has an optional image that can be attached. The relation between the listings model and active record attachments, the initial place the images are held before being exported to AWS, is a one-mandatory to one-optional relation; each listing may have one image, but an image must have a listing. The active record attachments model also references an active record blobs model through a foreign key, together making up the 'active storage' feature of the app. While the images are stored with AWS, this active storage feature is still a necessary part of the code that facilitates this image uploading.

How do active record attachments and blobs work? Active record blobs essentially stores the image data, such as its file type, metadata and name, as well as a key that points to thimage in AWS. The active record attachments model is a bit more complicated. Each entry references a blob through a foreign key, as seen in the ERD, but also references a record; it's a polymorphic join table between the record (in GuitarBay, this is the listing) and the blob. Essentially, active storage attachments belongs to two models - listings and blobs.

### Database schema

The final database ERD is very similar to the initial draft ERD, with the addition of the active record attachments and blob models.

In future releases of GuitarBay, there will hopefully be additions to the final ERD, such as models for orders, favourited items and new features, such as replacing the location feature model with the Google Maps API.

![Final ERD](https://i.imgur.com/tBzfXhP.png)

### Task allocation and tracking

Tasks were allocated and tracked using Trello - This is a kanban board app consisting of columns and cards which can be moved between the columns.

For this project, four columns were used - To do, doing, done and extra. The first three columns comprised the core of the app, while the extra column was for extra features which would be added on but were optional.

All the cards began in either the to do or extra column, and then were moved accordingly.

Many of the cards had checklists in them, which were ticked off when each of the individual tasks were done. For example, the 'create views' card had a checklist with all the views that needed to be created, such as home, listings and help. Only when all these items were ticked off was it moved to the done list.

The Trello board in action looks like this:

![Trello screenshot](https://i.imgur.com/cbJbNVX.png)

As this project was relatively small, there was no need to use a more advanced kanban board (such as one with extra columns), or a methodology like agile or scrum to keep track of a team or present work to a client. While this Trello-based approach seems minimal, it is the largest amount of task allocation and tracking required by GuitarBay's development.

The trello board currently looks as such:

![Final Trello screenshot](https://i.imgur.com/fSRJORg.png)

### Future

Some features that will be added to GuitarBay in the future include:

- Searching by manufacturer, year and username, not just model
- Transactional emails
- In-app messaging
- Responsive styling
- Google Maps API for locations
- Australia Post API for delivery cost estimates
- An admin/superuser account
- Reverb API for estimating item market values
- Uploading multiple images with each listing
- Favourited items and orders models
