#!/usr/bin/env owl

#zoo "f937ce439c8adcaea23d42753f487299"

let _ =
  Array.init 6 (fun i ->
    Owl.Log.info "generate content with style %i" i;
    let fname = Printf.sprintf "dst_%i.png" i in
    FST.run ~style:i "src.jpg" fname
  )
