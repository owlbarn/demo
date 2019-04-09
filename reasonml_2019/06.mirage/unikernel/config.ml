open Mirage

let main =
  foreign
    ~packages:[package "owl-base"]
   "Unikernel.GD" job

let () =
  register "gradient" [main]
