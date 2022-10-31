SetFactory("OpenCASCADE");
x0 = 0;
x1 = 0.012;
y0 = 0;
y1 = 0.012;
x_c = (x0 + x1) / 2;
y_c = (y0 + y1) / 2;
cl_1 = 0.001;
cl_2 = 0.0001;
rad = 0.0005;

Point(1) = {x0, y0, 0, cl_1};
Point(2) = {x1, y0, 0, cl_1};
Point(3) = {x0, y1, 0, cl_1};
Point(4) = {x1, y1, 0, cl_1};

Point(10) = {x_c, y_c, 0, cl_2};
Point(11) = {x_c-rad, y_c, 0, cl_2};
Point(12) = {x_c+rad, y_c, 0, cl_2};
Point(13) = {x_c, y_c-rad, 0, cl_2};
Point(14) = {x_c, y_c+rad, 0, cl_2};

Line(1) = {1, 2};
Line(2) = {1, 3};
Line(3) = {2, 4};
Line(4) = {3, 4};

Circle(11) = {11, 10, 13};
Circle(12) = {13, 10, 12};
Circle(13) = {12, 10, 14};
Circle(14) = {14, 10, 11};

Line Loop(21) = {1, 3, -4, -2};
Line Loop(22) = {11, 12, 13, 14};
Plane Surface(1) = {21, 22};

Physical Line(1) = {1};
Physical Line(2) = {3};
Physical Line(3) = {4};
Physical Line(4) = {2};
Physical Line(5) = {11, 12, 13, 14};
Physical Surface(1) = {1};
