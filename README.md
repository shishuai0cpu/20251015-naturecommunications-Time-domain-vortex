README — Spectrum_varies_with_radius (MATLAB)
=====================================================================================

Overview
--------
This script builds analytic time-domain field components Ex(t,x), Ey(t,x), Ez(t,x) at a fixed plane z=z_min (with y=0 along the x-axis), then projects them to the frequency domain by multiplying with exp(-jωt) over a discrete time grid. It finally plots a frequency–position heatmap of |E_x(ω,x)| (you can switch to Ey or Ez).

Files
-----
- main.m (your script): parameters, grids, time-domain fields, frequency projection, and plotting.

Requirements
------------
- MATLAB R2019a or newer (earlier likely compatible)
- No toolbox hard dependencies
- Memory: ≥ 8 GB recommended (defaults are modest)

Key Parameters
---------------
Constants:
  c = 3.0e8; mu = 4*pi*1.0e-7; epsilon = 1/(c^2*mu); z0 = sqrt(mu/epsilon);
Beam/field:
  q1 = 0.03; q2 = 20*q1; l = 1; f0 = 1e-7;
Sampling:
  - Spatial: x ∈ [0, 0.75] with step 0.01; y=0; z=0.4 (fixed plane)
  - Time: t ∈ [z/c−20*q1/c, z/c+20*q1/c] with step 0.02*q1/c
Frequency axis:
  w = (0.5:0.1:12)*1e9 (0.5–12 GHz, 0.1-GHz spacing)

Workflow
--------
1. Grid: build time–y grid (meshgrid(y,t)); with y=0, this is effectively a 1-D x cut sampled over time.
2. Field assembly: compute complex ex, ey, ez and take real(...) for physical fields.
3. Frequency projection: construct fff(i,:) = exp(-1i*2*pi*w(i)*tt); then fex = fff*ex; (same for ey, ez).
4. Plot: rotate/flip arrays and plot |fex| vs (frequency, position).

Run
---
1. Save as main.m

2. In MATLAB:
   run('main.m')



------------------------------------------------------------------------------------

README — space_time_field (MATLAB)
===============================================================================

Overview
--------
This script constructs analytic time-domain fields Ex(t,x,y), Ey(t,x,y), Ez(t,x,y) on a fixed plane z=0.4 and visualizes the isosurfaces of their real parts in 3-D. Axes are (x, y, -t): the vertical axis encodes negative time (in ns).

draw_isosurface plots two surfaces: +threshold (red) and −threshold (blue).

Requirements
------------
- MATLAB R2018b+ (R2020+ recommended)
- Built-in functions only (meshgrid, isosurface, patch, light, etc.)
- Memory ≥ 8 GB

Key Parameters
---------------
Constants:
  c=3.0e8; mu=4*pi*1e-7; epsilon=1/(c^2*mu); z0=sqrt(mu/epsilon);
Field:
  q1=0.03; q2=20*q1; l=1; f0=1e-7;
Sampling:
  x,y ∈ [-0.5,0.5]; z=0.4; t from (z/c−20*q1/c) to (z/c+20*q1/c)
Visualization:
  Isovalue: 0.3; range [-0.5,0.5]; resample 100×100×N; view ~ (44°,50°)

Workflow
--------
1. Build 3-D grid (x,t,y)
2. Compute fields and take real parts
3. Convert time to ns and invert sign for plotting
4. Use draw_isosurface to render ±0.3 normalized isosurfaces with lighting
5. Adjust view, labels, and limits

Run
---
run('main.m')

Interpretation
--------------
- Color: red = +value, blue = −value
- z-axis = −time (ns)
- Ring/spiral shapes indicate OAM-like phase and propagation structure

Troubleshooting
---------------
1. Performance: lower grid size or ashuliang
2. Adjust isovalue between 0.15–0.5 to emphasize detail
3. Regularize denominators (+1e-12) for stability
4. To show only positive surface, remove the −value plot block

