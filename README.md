# PWC-WEB

Web home for Prothro Wilhelmi and Company

## Changing staff and employees

* Change employees.yml or photos.yml as needed
* Place images in appropriate locations in app/images
* run `rake db:reset`

## Image Editing

### batch
#### staff images (300 x 375)
`mogrify -quality 90 -resize 300x375^ -crop 300x375 *.jpg`

#### gallery images
force width
`mogrify -quality 90 -resize 500 *.jpg`
force height
`mogrify -quality 90 -resize x333 *.jpg`
force size (crop center)
`mogrify -quality 90 -resize 500x333^ -gravity Center -crop 500x333+0+0 *.jpg`
force size (crop bottom out)
`mogrify -quality 90 -resize 500x333^ -crop 500x333+0+0 *.jpg`
force size (crop top out)
`mogrify -quality 90 -resize 500x333^ -gravity North -crop 500x333+0+0 *.jpg`


### single

#### staff picture
`mogrify -quality 90 -resize 300x375^ -crop 300x375 tom.jpg`

#### add color canvas

##### photo album (horizontal)
convert test.jpg -resize x333 -quality 90 -background '#9a8b7a' -gravity center -extent 500x333 test.jpg

##### slideshow (vertical)
convert test.jpg -resize 300 -quality 90 -background '#675b4d' -gravity center -extent 300x376 test.jpg
