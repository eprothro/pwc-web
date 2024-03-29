333 # PWC-WEB

Web home for Prothro Wilhelmi and Company

## Changing staff and employees

* Change employees.yml or photos.yml as needed
* Place images in appropriate locations in app/images
* run `rake db:reset`

### Deployments

Deployments are performed via pushes to Heroku git remotes.

Add the snippet below to your `.git/config` file to set up remotes for easy `git` deploys and `heroku` command execution.

```
[heroku]
  remote = stage
[remote "stage"]
  url = https://git.heroku.com/pwc-staging.git
  fetch = +refs/heads/*:refs/remotes/heroku/*
[remote "prod"]
  url = https://git.heroku.com/pwc-production.git
  fetch = +refs/heads/*:refs/remotes/heroku/*
```

* `bin/stage`
* `bin/release`

## Image Editing

### batch
#### staff images (300 x 375)

1. place images in import/staff
2. `bin/import_staff_images`

#### gallery images

horizontal are 500x333 (3:2)
vertical are 375x500 (3:4)
need 3 of same orientation/size per gallery row

take into photos app and crop to 3:2 or 4:3
then copy to import directory and mogrify
imageoptim then move into asset location

force width 500
`mogrify -quality 90 -resize 500 *.jpg`
force height 375
`mogrify -quality 90 -resize 375 *.jpg`
force height
`mogrify -quality 90 -resize x333 *.jpg`
force horizontal (crop center)
`mogrify -quality 90 -resize 500x333^ -gravity Center -crop 500x333+0+0 *.jpg`
force horizontal (crop bottom out)
`mogrify -quality 90 -resize 500x333^ -crop 500x333+0+0 *.jpg`
force horizontal (crop top out)
`mogrify -quality 90 -resize 500x333^ -gravity South -crop 500x333+0+0 *.jpg`

force vertical (crop bottom out)
`mogrify -quality 90 -resize 375x500^ -crop 375x500+0+0 *.jpg`
force vertical (crop center)
`mogrify -quality 90 -geometry 500x375^ -gravity center -crop 500x375+0+0 -auto-orient *.jpg`


#### covers


### single

#### staff picture
`mogrify -quality 90 -resize 300x375^ -crop 300x375 tom.jpg`

#### add color canvas

##### photo album (horizontal)
convert test.jpg -resize x333 -quality 90 -background '#9a8b7a' -gravity center -extent 500x333 test.jpg

##### slideshow (vertical)
convert test.jpg -resize 300 -quality 100 -background '#675b4d' -gravity center -extent 300x376 test.jpg
