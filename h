FoamFile { version 2.0; format ascii; class volScalarField;
           location "0"; object h; }
dimensions      [ 0 2 -2 0 0 0 0 ];
internalField   uniform 700000;        // Cp * T_preheat = 700 * 1000 J/kg
boundaryField
{
    top
    {
        type        externalWallHeatFluxTemperature;
        kappaMethod fluidThermo;
        mode        coefficient;
        h           uniform 0.0;
        Ta          uniform 293.15;
        emissivity  0.8;
        qr          none;
        value       uniform 700000;
    }
    sides  { type zeroGradient; }
    bottom
    {
        type        externalWallHeatFluxTemperature;
        kappaMethod fluidThermo;
        mode        coefficient;
        h           uniform 500.0;
        Ta          uniform 293.15;
        emissivity  0.0;
        qr          none;
        value       uniform 700000;
    }
}
