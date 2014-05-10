
new object $help_obj_math: $help_obj;

var $dmi_data descriptions = #[];
var $has_name name = [:prop, "Math Library", "Math Library"];
var $help_node body = <$ctext_frob, [[<$format, ["subj", [["level", "3"]], ["Vector operations"], :do_subj]>, <$format, ["dl", [], [<$format, ["dt", [], [".", <$format, ["method", [["math.add", 1]], ["add"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Vector addition. It adds two floating-point lists, element-by-element."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.sub", 1]], ["sub"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Vector substraction."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.dot", 1]], ["dot"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Dot product of two vectors."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.cross", 1]], ["cross"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Cross product of 3-dimensional vectors."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.distance", 1]], ["distance"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Euclidean distance between the two vectors."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.scale", 1]], ["scale"], :do_method]>, "(", <$format, ["var", [], ["x"], :do_var]>, ",", <$format, ["var", [], ["v"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Scales the vector ", <$format, ["var", [], ["v"], :do_var]>, " by scalar ", <$format, ["var", [], ["x"], :do_var]>, "."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.minor", 1]], ["minor"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Calculates element-by-element minimum of the two lists. Used for boxes."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.major", 1]], ["major"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Calculates element-by-element maximum."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.is_lower", 1]], ["is_lower"], :do_method]>, "(", <$format, ["var", [], ["v1"], :do_var]>, ",", <$format, ["var", [], ["v2"], :do_var]>, ") native"], :do_dt]>, <$format, ["dd", [], ["Returns true if every element of ", <$format, ["var", [], ["v1"], :do_var]>, " is lesser or equal than corresponding element of ", <$format, ["var", [], ["v2"], :do_var]>, "."], :do_dd]>], :do_dl]>, <$format, ["subj", [["level", "3"]], ["Coordinate operations"], :do_subj]>, <$format, ["dl", [], [<$format, ["dt", [], [".", <$format, ["method", [["math.pi", 1]], ["pi"], :do_method]>, "()"], :do_dt]>, <$format, ["dd", [], ["Returns pi."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.pi2", 1]], ["pi2"], :do_method]>, "()"], :do_dt]>, <$format, ["dd", [], ["Returns 2*pi."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.deg_rad", 1]], ["deg_rad"], :do_method]>, "(", <$format, ["var", [], ["angle"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Converts the ", <$format, ["var", [], ["angle"], :do_var]>, " from degrees to radians."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rad_deg", 1]], ["rad_deg"], :do_method]>, "(", <$format, ["var", [], ["angle"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Converts the ", <$format, ["var", [], ["angle"], :do_var]>, " from radians to degrees."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.polar_rectangular", 1]], ["polar_rectangular"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Transforms pair [distance, angle] into [x,y]."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rectangular_polar", 1]], ["rectangular_polar"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Inverse of the above."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.cylindrical_rectangular", 1]], ["cylindrical_rectangular"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Transforms [r, angle, z] into [x,y,z]."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rectangular_cylindrical", 1]], ["rectangular_cylindrical"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Inverse of the above."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.spherical_rectangular", 1]], ["spherical_rectangular"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Transform [r, phi, theta] into [x,y,z]."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rectangular_spherical", 1]], ["rectangular_spherical"], :do_method]>, "(", <$format, ["var", [], ["coords"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Inverse of the above."], :do_dd]>], :do_dl]>, <$format, ["subj", [["level", "3"]], ["Matrix operations"], :do_subj]>, <$format, ["dl", [], [<$format, ["dt", [], [".", <$format, ["method", [["math.matrix_add", 1]], ["matrix_add"], :do_method]>, "(", <$format, ["var", [], ["m1"], :do_var]>, ",", <$format, ["var", [], ["m2"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Add two matrices."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.matrix_sub", 1]], ["matrix_sub"], :do_method]>, "(", <$format, ["var", [], ["m1"], :do_var]>, ",", <$format, ["var", [], ["m2"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Substract ", <$format, ["var", [], ["m2"], :do_var]>, " from ", <$format, ["var", [], ["m1"], :do_var]>], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.matrix_mul", 1]], ["matrix_mul"], :do_method]>, "(", <$format, ["var", [], ["m1"], :do_var]>, ",", <$format, ["var", [], ["m2"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Multiply the two matrices (their dimensions must be compatible for multiplication, of course)"], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.matrix_scale", 1]], ["matrix_scale"], :do_method]>, "(", <$format, ["var", [], ["s"], :do_var]>, ",", <$format, ["var", [], ["m"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Scale the matrix ", <$format, ["var", [], ["m"], :do_var]>, " by scalar ", <$format, ["var", [], ["s"], :do_var]>, "."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.transpose", 1]], ["transpose"], :do_method]>, "(", <$format, ["var", [], ["m"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Transpose the matrix. This will actually work regardless of the element type, so the operation is useful on lists, as well."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.ident_mat", 1]], ["ident_mat"], :do_method]>, "(", <$format, ["var", [], ["n"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Returns ", <$format, ["var", [], ["n"], :do_var]>, "-dimensional identity matrix."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.translation_mat", 1]], ["translation_mat"], :do_method]>, "(", <$format, ["var", [], ["v"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Constructs the matrix for translation by vector ", <$format, ["var", [], ["v"], :do_var]>, ". It works for 2d or 3d case."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.tensor", 1]], ["tensor"], :do_method]>, "(", <$format, ["var", [], ["m1"], :do_var]>, ",", <$format, ["var", [], ["m2"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Tensor product of the two vectors. This is the matrix ", <$format, ["var", [], ["A"], :do_var]>, " with the property that Ax=<x,v1>v2."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.skew", 1]], ["skew"], :do_method]>, "(", <$format, ["var", [], ["v"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Construct a skew operator for the vector ", <$format, ["var", [], ["v"], :do_var]>, ". That's matrix ", <$format, ["var", [], ["A"], :do_var]>, " that turns any vector into its cross product with ", <$format, ["var", [], ["v"], :do_var]>, ". This is used by rotation_mat_3d."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rotation_mat_2d", 1]], ["rotation_mat_2d"], :do_method]>, "(", <$format, ["var", [], ["angle"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Construct 2d rotation matrix for the given ", <$format, ["var", [], ["angle"], :do_var]>, "."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.rotation_mat_3d", 1]], ["rotation_mat_3d"], :do_method]>, "(", <$format, ["var", [], ["axis"], :do_var]>, ",", <$format, ["var", [], ["angle"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["This is 3d rotation. Valid values for ", <$format, ["var", [], ["axis"], :do_var]>, " are 'x, 'y, 'z, or a 3d vector. The result is a homogenous matrix."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.scale_mat", 1]], ["scale_mat"], :do_method]>, "(", <$format, ["var", [], ["scale"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Returns a scaling matrix (nonuniform). Scale is assumed to be 2d or 3d vector."], :do_dd]>, <$format, ["dt", [], [".", <$format, ["method", [["math.transform_vect", 1]], ["transform_vect"], :do_method]>, "(", <$format, ["var", [], ["m"], :do_var]>, ",", <$format, ["var", [], ["v"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["Transform the vector by matrix. This will work for both normal and homogenous matrices (determined by comparing the dimensions of the matrix and vector)."], :do_dd]>], :do_dl]>, <$format, ["subj", [["level", "3"]], ["Miscellanous"], :do_subj]>, <$format, ["dl", [], [<$format, ["dt", [], [".", <$format, ["method", [["math.runge", 1]], ["runge"], :do_method]>, "(", <$format, ["var", [], ["x"], :do_var]>, ",", <$format, ["var", [], ["y"], :do_var]>, ",", <$format, ["var", [], ["h"], :do_var]>, ",", <$format, ["var", [], ["f"], :do_var]>, ",", <$format, ["var", [], ["data"], :do_var]>, ")"], :do_dt]>, <$format, ["dd", [], ["This is one step in Runge-Kutta method for ordinary differential equations. Scalar ", <$format, ["var", [], ["x"], :do_var]>, " and vector ", <$format, ["var", [], ["y"], :do_var]>, " are the current values of independant and dependant variables, ", <$format, ["var", [], ["h"], :do_var]>, " is the timestep, ", <$format, ["var", [], ["f"], :do_var]>, " is the method on the sender that accepts ", <$format, ["var", [], ["x"], :do_var]>, ", ", <$format, ["var", [], ["y"], :do_var]>, ", and ", <$format, ["var", [], ["data"], :do_var]>, ", and returns the right-hand-side of the equation."], :do_dd]>], :do_dl]>], #[]]>;
var $help_node group = 1;
var $help_node index = $help_index_objects;
var $help_node links = #[];
var $root created_on = 869046674;
var $root flags = [:variables, :methods, :code, :core];
var $root inited = 1;
var $root managed = [$help_obj_math];
var $root manager = $help_obj_math;

