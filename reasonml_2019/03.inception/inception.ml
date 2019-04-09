#!/usr/bin/env owl

#zoo "9428a62a31dbea75511882ab8218076f"

let img = "image.jpg";;
let labels = InceptionV3.infer img;;
print_endline (InceptionV3.to_json ~top:5 labels);;
