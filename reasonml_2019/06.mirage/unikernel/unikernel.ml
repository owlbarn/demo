open Owl_base
module A = Owl_algodiff_generic.Make (Owl_base_dense_ndarray.D)
open A

module GD = struct


let rec desc ?(eta=F 0.01) ?(eps=1e-6) f x =
  let g = (diff f) x in
  if (unpack_flt g) < eps then x
  else desc ~eta ~eps f Maths.(x - eta * g)


let start =
  let f = Maths.sin in
  let y = desc f (F 0.1) in
  Owl_log.info "argmin f(x) = %g" (unpack_flt y);
  (* add this line for Mirage *)
  Lwt.return_unit

end
