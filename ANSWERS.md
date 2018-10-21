# Q0: Why are these two errors being thrown?
The first error was thrown because the database had not been migrated (so I ran rails db:migrate which has to be run every time the database schema is changed). The second error was thrown because the Pokemon Controller doesn't exist yet but it's referenced in the starter code.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the index method in the home_controller, it selects a random trainerless pokemon from the Pokemon in the database. In the index view, it displays this Pokemon.

# Question 2: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button that, when clicked, makes a PATCH request to the capture_path (which corresponds to pokemons#capture in routes.rb) with a parameter id that is the wild Pokemon's id.

# Question 3: What would you name your own Pokemon?
Michael Scott

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
