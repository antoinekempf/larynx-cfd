lc = 0.08;
ls = 0.015;

// =========================
// Bottom wall
// =========================

Point(1)  = {0.0, 0.0, 0, lc};
Point(2)  = {1.5, 0.0, 0, lc};
Point(3)  = {2.5, 0.15, 0, ls};
Point(4)  = {3.0, 0.35, 0, ls};
Point(5)  = {3.5, 0.15, 0, ls};
Point(6)  = {4.5, 0.0, 0, lc};
Point(7)  = {6.0, 0.0, 0, lc};

// =========================
// Top wall
// =========================

Point(8)  = {0.0, 1.0, 0, lc};
Point(9)  = {1.5, 1.0, 0, lc};
Point(10) = {2.5, 0.85, 0, ls};
Point(11) = {3.0, 0.65, 0, ls};
Point(12) = {3.5, 0.85, 0, ls};
Point(13) = {4.5, 1.0, 0, lc};
Point(14) = {6.0, 1.0, 0, lc};

// =========================
// Curved walls
// =========================

Spline(1) = {1,2,3,4,5,6,7};
Spline(2) = {8,9,10,11,12,13,14};

// =========================
// Inlet / Outlet
// =========================

Line(3) = {1,8};
Line(4) = {7,14};

// =========================
// Fluid domain
// =========================

Line Loop(1) = {1,4,-2,-3};
Plane Surface(1) = {1};

// =========================
// Physical groups
// =========================

Physical Surface("fluid") = {1};

Physical Line("inlet")  = {3};
Physical Line("outlet") = {4};

Physical Line("walls") = {1,2};

// =========================
// Refinement field near glottis
// =========================

Field[1] = Box;
Field[1].XMin = 2.2;
Field[1].XMax = 4.2;

Field[1].YMin = 0.0;
Field[1].YMax = 1.0;

Field[1].VIn  = 0.015;
Field[1].VOut = 0.08;

Background Field = 1;

// =========================
// Mesh format
// =========================

Mesh.MshFileVersion = 2.2;