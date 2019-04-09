open! Owl_base;

Owl_log.info("Hello, BuckleScript and Reason!");

Owl_log.info("Example#1: basic math function");
let x = Owl_base_maths.sin(5.);
Owl_log.info("Result is %f", x);

Owl_log.info("Example#2: create random matrix");
let y = Owl_base_dense_ndarray.D.uniform([|3,4,5|]);
Owl_base_dense_ndarray.D.print(y);

Owl_log.info("Example#2: operate matrices");
Owl_base_dense_ndarray.D.set(y, [|1,1,1|], 1.);
Owl_base_dense_ndarray.D.print(y);

let z = Owl_base_dense_ndarray.D.get_slice([[0,1],[2,3],[1,2]], y);
Owl_base_dense_ndarray.D.print(z);
