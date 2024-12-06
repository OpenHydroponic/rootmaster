include <./YAPP_Box/YAPPgenerator_v3.scad>

myPcb = "./RootMaster.stl";

//-- pcb dimensions
pcbLength           = 101; // Front to back
pcbWidth            = 101; // Side to side
pcbThickness        = 1.6;

//-- padding between pcb and inside wall
paddingFront        = 0.15;
paddingBack         = 0.15;
paddingRight        = 0.15;
paddingLeft         = 0.15;

// Base
basePlaneThickness  = 4.0;
baseWallHeight      = 10;

// Lid
lidWallHeight       = 16;
lidPlaneThickness   = 1.2;

//-- Thickness
wallThickness       = 2;


//-- ridge where base and lid off box can overlap
//-- Make sure this isn't less than lidWallHeight
ridgeHeight         = 4;
ridgeSlack          = 0.2;

//-- the radius of all outside edges and corners
roundRadius         = 2.0;

//-- How much the PCB needs to be raised from the base
//-- to leave room for solderings and whatnot
standoffHeight      = 4.0;  //-- used for PCB Supports, Push Button and showPCB
standoffDiameter    = 6;
standoffPinDiameter = 2.8;
standoffHoleSlack   = 0.3;

snapJoins =
[
    [15, 5, yappLeft, yappSymmetric, yappCenter],
    [58, 5, yappRight, yappCenter]
];

pcbStands =
[
    [4, 4, , yappDefault, yappDefault, yappDefault, yappDefault, yappDefault, 2, yappBaseOnly, yappPin, yappAllCorners],
];

cutoutsBack =
[
    [9.4, 02, 8.4, 6, 0, yappRectangle],
    [19.6, 02, 10.9, 6, 0, yappRectangle],
    [36.75, 02, 8.4, 6, 0, yappRectangle],
    [47.26, 02, 8.4, 6, 0, yappRectangle],
    [64.6, 2, 15.7, 13, 7, yappCircle], // pH
];
ridgeExtBack =
[
    [63, 17, basePlaneThickness+2+3]
];

cutoutsLeft =
[
    [56.9, 1.5, 9.2, 3.6, 0, yappRectangle], // Usb
    [43.3, 1.5, 9.4, 11.2, 0, yappRectangle], // Barreljack
];
ridgeExtLeft =
[
    [56, 11.2, 2.5]
];

cutoutsFront =
[
    [11, 1.5, 9.5, 8.3, 0, yappRectangle],   // Pump 1
    [24.7, 1.5, 9.5, 8.3, 0, yappRectangle], // Pump 2
    [38, 1.5, 9.5, 8.3, 0, yappRectangle],   // Pump 3
    [50.4, 1.5, 10.9, 6, 0, yappRectangle],// Valve 3
    [63, 1.5, 8.4, 6, 0, yappRectangle],   // Valve 2
    [73.3, 1.5, 8.4, 6, 0, yappRectangle], // Valve 1
];

cutoutsRight =
[
    [8.3, 1.5, 8.3, 5.4, 0, yappRectangle], // DigIn 1
    [16.6+1.45, 1.5, 8.3, 5.4, 0, yappRectangle],   // DigIn 2
    [26.35+1.45, 1.5, 8.3, 5.4, 0, yappRectangle],// DigIn 3
    [77.4, 1, 16.1, 6, 0, yappRectangle],   // XT30(2+2)
];

labelsPlane =
[
    [ 30, 6, 0, 0.2, yappBack, "Liberation Mono:style=bold", 3, "PH" ],
    [ 47.3, 6, 0, 0.2, yappBack, "Liberation Mono:style=bold", 3, "TEMP" ],
    [ 60, 6, 0, 0.2, yappBack, "Liberation Mono:style=bold", 3, "EC" ],
    [ 73.2, 6, 0, 0.2, yappBack, "Liberation Mono:style=bold", 3, "FLOW" ],
     [ 85, 6, 0, 0.2, yappBack, "Liberation Mono:style=bold", 3, "TEMP" ],
];

function mountLength() = pcbLength + wallThickness*2;
boxMounts =
[
    [10, 3.5, 0, 3, yappBack, yappBase],
    [mountLength()-10, 3.5, 0, 3, yappBack, yappBase],
    [10, 3.5, 0, 3, yappFront, yappBase],
    [mountLength()-10, 3.5, 0, 3, yappFront, yappBase],
];

//-- which part(s) do you want to print?
printBaseShell        = true;
printLidShell         = true;
printSwitchExtenders  = false;


// debug
//inspectX = 6;
//inspectY = 75;
showSideBySide = true;
hideBaseWalls = false;
hideLidWalls = false;
showPcb = true;

YAPPgenerate();


if (showPcb)
{
  translate([
    wallThickness+paddingBack,
    wallThickness+paddingLeft,
    basePlaneThickness+standoffHeight
  ])
  {
    rotate([0,0,0]) import(myPcb);
  }
}
