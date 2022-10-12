# Tips and plan
- Need to write a Pluto notebook on working with and visulaizing vectors in Julia.
- 3D plots that are interactive- they need to work on live html like a Pluto server- I know that Plotly backend in Plots.jl works for static html but need to try the WebGL backend in Makie (still experimental but almost feature complete).
    - Though WGLMakie has feature parity, it seems **we need to add JS code** in order to access live server behavior (where we have an `Observable` and `Observer` interaction- this is pretty cool in GLMakie though and should try some time).
    - But static 3D plots can still be achieved with pure Julia like with Plotly backend in Plots or WGLMakie itself, miming the CairoMakie syntax. Just live animations can be problematic.
    - **That's the plan**

