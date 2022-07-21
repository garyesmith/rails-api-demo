# Steps to recreate this implementation

1. Download and install Ruby as per the [official documentation](https://www.ruby-lang.org/en/documentation/installation/) and choose options that include the DevKit environment. 

2. Reboot or restart your command line shell until you can confirm that Ruby is installed:
 
    `ruby -v`

3. Use RubyGem, the Ruby package manager, to installs rails: 

    `gem install rails`

4. Confirm rails is installed:

    `rails -v`

5. Now create a new Rails app and specify that is is an API only:

    `rails new portfolio-api --api`

6. Confirm the folder `portfolio-api` has been created, then change into it:

    `cd portfolio-api`

7. For testing, configure CORS to allow all requests to the server by un-commenting the following line in `Gemfile`:

    `gem "rack-cors"`

8. Install all the dependencies in the `Gemfile`:

    `bundle update`

    `bundle install`

9. Edit the CORS configuration to allow all hosts to access the API by editing `/config/initializers/cors.rb` to un-comment all lines of code beginning at line 8 and changing `"example.com"` to `"*"`.

10. Create the database model for projects:

    `rails g model Project title tag category image description body --no-testframework`

11. *Note*: If you receive errors about `gem "tzinfo-data"` not being found, do the following:

    Edit the `Gemfile` again and comment out this line by adding a `#` to the front of it:

    `#gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]`

    Then below that line, add these two new lines:

    `gem "tzinfo-data"`

    `gem "tzinfo"`

    Then run these commands again on the command line:

    `bundle update`

    `bundle install`

    Then re-run the command from step 10 again.

12. Run:

    `rails db:create`
    `rails db:migrate`
    `rails db:seed`

13. Then open the db console and confirm the seed records exist:

    `rails console`
    
    irb(main):000:0>> `Project.all`

14. Generate the controller:

    `rails g controller Projects`

15. Edit `/app/controllers/projects_controller.rb` and add the following inside the class:

    ```
    def index
        projects= Project.all
        render json: projects
    end
    ```

16. Edit `/config/routes.rb` and add the following inside the `do` block:

    `resources :projects,  only: [:index]`

17. Run the Rails server with:

    `rails server`

19. Then visit `http://127.0.0.1:3000/projects` in a browser or Postman to see the resulting index JSON.

20. Add the "apipie" gem to facilitate validation and automatic documentation by editing `Gemfile` and adding this to the bottom:

    `gem "apipie-rails"`

21. Then run these commands:

    `bundle install`

    `rails g apipie:install`

22. 

