# PWC-WEB

Web home for Prothro Wilhelmi and Company

## Images

### 300 x 376 via imagemagick

#### batch
##### staff images
`mogrify -quality 85 -resize 300x376^ -crop 300x376 *.jpg`
##### gallery images
force width
`mogrify -quality 85 -resize 500 *.jpg`
force height
`mogrify -quality 85 -resize x333 *.jpg`
force size (crop bottom out)
`mogrify -quality 85 -resize 500x333^ -crop 500x333 *.jpg`
force size (crop top off instead of bottom)
`mogrify -quality 85 -resize 500x333^ -gravity North -crop 500x333+0+42 *.jpg`

##### add color canvas
###### photo album (horizontal)
convert test.jpg -resize x333 -quality 85 -background '#9a8b7a' -gravity center -extent 500x333 test.jpg
###### slideshow (vertical)
convert test.jpg -resize 300 -quality 85 -background '#675b4d' -gravity center -extent 300x376 test.jpg




#### single
`mogrify -quality 85 -resize 300x376^ -crop 300x376 tom.jpg`