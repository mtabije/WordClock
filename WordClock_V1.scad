/****** 
Parametric Led box for word clocks by Mark Tabije & Bill Klinefelter
Designed for use with:
LastUpdated: 
*****/

//All Sizes in mm
overallLength=342;
overallWidth=376;
//overallLength=104;
//overallWidth=104;
overallHeight=34;

ledBoxCutoutLength=32;
ledBoxCutoutWidth=32;
ledBoxCutoutHeight=32;
ledBoxCutoutSpacing=2;

ledStripWidth=13;
ledStripHeight=4;


ledStripOnCenterStart=(ledBoxCutoutWidth+ledBoxCutoutSpacing)/2-ledStripWidth/2;
ledStripOnCenter=(ledBoxCutoutWidth+ledBoxCutoutSpacing)/2;

difference()
{
    cube([overallWidth,overallLength,overallHeight]);
    
    for(incX=[ledBoxCutoutSpacing:ledBoxCutoutWidth+ledBoxCutoutSpacing:overallWidth])
    {
        for(incY=[ledBoxCutoutSpacing:ledBoxCutoutLength+ledBoxCutoutSpacing:overallLength])
        {
            //Cutout LED Boxes
            translate([incX,incY,ledBoxCutoutSpacing])
                cube([ledBoxCutoutWidth,ledBoxCutoutLength,ledBoxCutoutHeight]);
        }  
    }
    for(incStrip=[ledStripOnCenterStart:ledBoxCutoutWidth+ledBoxCutoutSpacing:overallWidth+10])  //Error: remove 10
    {
         //Cutout tracks for LED Strip
          translate([incStrip,0,0])
            cube([ledStripWidth,overallLength,ledStripHeight]);
    
    }
    
}