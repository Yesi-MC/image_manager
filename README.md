# Image Management System

<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)

This web application is built on rails and it gives the user the functionality to add images to their user profile. 

### Table of Contents
  - [How to Install Application](#how-to-install-application)
  - [How to Use Application Hosted on Heroku](#how-to-use-application)
  - [Testing](#testing)
  - [Future Implementations](#future-implementations)
  - [Licenses](#licenses)
  - [Contact](#contact)

## How to Install Application

For usage on your local machine, in your terminal navigate to a directory to store this application and run the instructions listed below:

```
git clone https://github.com/Yesi-MC/image_manager
cd image_manager
bundle install
rake db:{create,migrate,seed}
rails s
Open localhost:3000 in your web browser
To log into the app please use the login information from the seeds file:
   Username: joeuser@gmail.com
   Pass: !pass123!
```

## How to Use Application Hosted on Heroku

You can use [the Image Management System App here](https://image-manager-system.herokuapp.com/).

To log into the app please use the login information from the seeds file:
```
Username: joeuser@gmail.com
Pass: !pass123!
```

Once this application is open in your web browser, click on `Login`.
You will be directed to your user dashboard where you can see all the images you have uploaded and you can upload new images by their url. 

## Testing

* For testing I used RSpec

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code.

* In order to run the tests, run `bundle exec rspec` in the command line and you should have all passing tests.

## Future Implementations

In the future I would give users the option to upload a picture without requiring it to be a URL. I would like to use a service like AWS S3 bucket to store the images. 
  
## Licenses

  * Ruby 2.5.3
  * Rails 5.2.4.4

## Contact

#### Yesi Meza: [LinkedIn](https://www.linkedin.com/in/yesimeza), [Email](mailto:yesi.meza10@gmail.com), [GitHub](https://github.com/Yesi-MC)


