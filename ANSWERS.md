# Q0: Why are these two errors being thrown?
Need to call rails db:migrate, and there exist no pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
    The pokemon are appearing because they are wild.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
    Gets the pokemon's id for the capture method in the pokemon controller.
# Question 3: What would you name your own Pokemon?
Squirtle
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Used current_trainer to redirect to the profile.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
If pokemon doesn't save successfully, there the flasbh error will pop up to display the error.
# Give us feedback on the project and decal below!
Cool project, and had the awesome starter pokemon.
# Extra credit: Link your Heroku deployed app
