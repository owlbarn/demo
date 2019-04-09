module A = Owl_algodiff_generic.Make (Owl_base_dense_ndarray.D)
open A

let rec desc ?(eta=F 0.01) ?(eps=1e-6) f x =
  let g = (diff f) x in
  if (unpack_flt g) < eps then x
  else desc ~eta ~eps f Maths.(x - eta * g)


let _ =
  let f = Maths.sin in
  let y = desc f (F 0.1) in
  Owl_log.info "argmin f(x) = %g" (unpack_flt y)
