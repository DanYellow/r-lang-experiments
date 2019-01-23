setwd("~/projects/r-lang/iris")

# install.packages('magick')
# library(magick)
if (!require(magick)) {
  install.packages("magick")
  require(magick)
}

frink <- image_read("https://jeroen.github.io/images/frink.png")
#reading a jpg image ex-President Barack Obama from Wikipedia
obama <- image_read('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/President_Barack_Obama.jpg/800px-President_Barack_Obama.jpg')

image_info(obama)
image_info(frink)

print(obama)