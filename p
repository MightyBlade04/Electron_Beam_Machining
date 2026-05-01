/*--------------------------------*- C++ -*----------------------------------*\
| EBM Simulation | p | Pressure (derived from p_rgh)                          |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    location    "0";
    object      p;
}

dimensions      [ 1 -1 -2 0 0 0 0 ];

internalField   uniform 101325;        // atmospheric pressure [Pa]

boundaryField
{
    top    { type calculated; value uniform 101325; }
    bottom { type calculated; value uniform 101325; }
    sides  { type calculated; value uniform 101325; }
}
