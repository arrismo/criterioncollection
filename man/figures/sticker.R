library(hexSticker)
library(magick)

imgurl <- "./man/figures/criterion-logo.png"

sticker(imgurl, package = "criterioncollection", p_size = 5, s_x = 1,
        s_y = .75, s_width = .5, h_fill = "#000000", h_color = "#A0A0A0",
        filename = "man/figures/criterion_hex.png")
