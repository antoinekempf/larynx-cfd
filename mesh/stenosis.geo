lc = 0.08;

// Points
Point(1) = {0.0, 0.0, 0, lc};
Point(2) = {3.0, 0.0, 0, lc};
Point(3) = {6.0, 0.0, 0, lc};

Point(4) = {0.0, 1.0, 0, lc};
Point(5) = {3.0, 0.35, 0, lc};
Point(6) = {6.0, 1.0, 0, lc};

// Bottom lines
Line(1) = {1,2};
Line(2) = {2,3};

// Top lines
Line(3) = {4,5};
Line(4) = {5,6};

// Inlet / outlet
Line(5) = {1,4};
Line(6) = {3,6};

// Surface
Line Loop(1) = {1,2,6,-4,-3,-5};
Plane Surface(1) = {1};

// Physical groups
Physical Surface("fluid") = {1};

Physical Line("inlet") = {5};
Physical Line("outlet") = {6};

Physical Line("walls") = {1,2,3,4};