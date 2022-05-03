library(hexSticker)
library(magick)

imgurl <- "./man/figures/criterion-logo.png"

sticker(imgurl, package = "criterioncollection", p_size = 5, p_y = 1, s_x = 1,
        s_y = 1, s_width = .6, h_fill = "#000000", h_color = "#A0A0A0",
        filename = "man/figures/criterion_hex.png")
