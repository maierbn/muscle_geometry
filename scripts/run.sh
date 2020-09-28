

#./remove_inside_triangles.py  ../left_biceps_brachii.stl  ../left_biceps_brachii_out2.stl # remove non-surface triangles (takes ~1h)

./create_rings.py ../biceps.stl 20     # cut surface mesh at specified z positions and create rings from it. Write result to `rings_created`
#./extract_rings.py ../biceps.stl     # extract existing rings from surface mesh   (this is the alternative to create_rings.py)   Write result to `rings_extracted`

mv rings_created rings      # rename ring output file
#mv rings_extracted rings

./create_mesh.py                     # reads input from `rings`
