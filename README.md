**TableLists**

TableLists - is this gem which can help you sort elements from database and divided into pages.

**Description:**

Let think about Rails project where you have controller , view and model and you want show table in view with data from model BUT you want divide it to few pages - TableLists can help you with it. 

So how you can use it?->

**How to use:**

At first you must add this row to Gemfile "`gem 'tablelists', '~> 0.4.3'`" and call `bundle install` in console.
For example we have model with name `News`. Now we will go to `NewsController` and method:

`def index`

`@page = params[:page] # Number of page.`

`number_of_elements = 10 # How much elements will be on page.`

`filting_options = {} # Options of filting(not necessarily)`

`@news = News.filting(@page , number_of_elements , filting_options)`

`end`

and to 'views/news/index' 

`<% @news.each do |news| %>`

`...`

`<% end %>`

`<%= link_to "Next page" , news_index_path(page:@page+1)%>`

**Contact us:**

Email: daniel.chernovsky@gmail.com 