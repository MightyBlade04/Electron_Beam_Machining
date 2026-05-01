FoamFile { version 2.0; format ascii; class volScalarField;
           location "0"; object k; }
dimensions      [ 0 2 -2 0 0 0 0 ];
internalField   uniform 1e-10;         // dummy value — laminar run, field inactive
boundaryField
{
    top    { type zeroGradient; }
    bottom { type zeroGradient; }
    sides  { type zeroGradient; }
}
