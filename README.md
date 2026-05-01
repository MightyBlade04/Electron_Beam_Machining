# Electron_Beam_Machining
This has the code I wrote to simulate an electron beam machining in OPENFOAM
the files need to be in this way <img width="780" height="629" alt="image" src="https://github.com/user-attachments/assets/43b6642c-a2d5-4bb3-bb23-49bc59dd657b" />
# 1. Generate the background block mesh
blockMesh

# 2. Refine with snappyHexMesh (creates constant/polyMesh/)
snappyHexMesh -overwrite

# 3. Decompose for parallel (uses decomposeParDict, 8 cores)
decomposePar

# 4. Run the solver in parallel
mpirun -np 8 buoyantPimpleFoam -parallel

# 5. Reconstruct time directories after the run
reconstructPar
