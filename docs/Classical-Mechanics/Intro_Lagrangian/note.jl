### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ a0870100-3e86-11ed-02cd-cfbdc81b4072
md"""
# Principle of Least Action and Lagrangian mechanics
"""

# ╔═╡ e43e57f1-8484-465f-a1e3-7cfbf97f74ff
md"""
Principle of least action or Lagrangian mechanics is a formulation of classical physics that can be thought of as a generalization to Newtonian mechanics where we don't have to use "real" or *Cartesian* coordinates to describe the positions and corresponding velocities of every particle. We can in fact incorporate *constraints* on the interaction between various particles and potentially reduce the number of required coordinates to what's known as *degrees of freedom* of a system.
"""

# ╔═╡ 2c003547-5ef6-47b8-949a-d47a73fb094b
md"""
Lagrangian mechanics can describe systems beyond the ones that can be described using Newtonian mechanics like relativistic systems and field systems like (classical) electrodynamics. It also forms the basis of the path integral approach to quantum mechanics. It's the starting point to Hamiltonian mechanics, which is the foundation for the Schrodinger/Heisenberg quantum mechanics as well as quantum field theories. Hamiltonians are also the basis of (canonical) statistical physics which combines with quantum mechanics to yield condensed matter physics! So the importance of Lagrangian mechanics perhaps cannot be overstated.
"""

# ╔═╡ 50afa43e-17b5-4442-800d-ac5f14459260
md"""
## Basics with end to end example
> The state of a physical system in the Lagrangian formulation is given by **time**, (generalized) **coordinates** and (generalized) **velocities** along every degree of freedom[^1]. 
[^1]: There are some caveats- like the coordinates are in fact maps from abstract *topological manifolds* and that time can sometimes refer to both a parameter or a coordinate.

"""

# ╔═╡ b79d90ab-39d0-48f7-ba4c-e7607deafccb
md"""
For all the fuss about generalized coordinates, we'll start from the simplest Newtonian example of a free particle in a 1D space with a single Cartesian coordinate. **Action** is a scalar function of paths between two fixed points in a coordinate-time graph of a system. The physical path taken by the system evolving between these two points is the one that minimizes this action. *Any* other path is decreed unphysical.
"""

# ╔═╡ 1db4177d-fe0f-450e-8b51-b46f018cb664
md"""
Say we have two points A and B on the coordinate-time graph of the free particle. From Newton's second law, we know the physical path is a straight line between them.
"""

# ╔═╡ 5c1b3fc0-7233-4e97-9009-99d3fbd8f492
html"""
<img src="https://imgur.com/4SAaytn.png" alt="Free particle graph" />
"""

# ╔═╡ 0c7d1347-b314-45d0-83b7-ef9e7ad8206d
md"""
We have a (black) physical path and some (blue) unphysical paths between A and B. Do note that the black line does minimize a pretty important quantity: the path length $l$. So whatever this action (call it $S$) is, it ought to be proportional to the path length!

$S \propto l$

This delightful observation could probably have been the historical motivation to pursue this. I can indeed vaguely recollect that an action principle was being used to explain straight line trajectories of light rays. It's also useful to ~~write~~ type down the expression to evaluate the path length of a generic path $q(t)$:

$l = \int \sqrt{dq^2 + dt^2} = \int_0^1 dt \sqrt{\left(\frac{dq}{dt}\right)^2 + 1}$
"""

# ╔═╡ 1b4e90f3-20e2-4069-98ee-a7d9621b13e9
md"""
It's also important avoid, in Einstein's words "spooky action at a distance". The dynamics of *any* physical system depends only on the coordinates and its derivatives at present time and not on its history. For the action principle, this means that action of a path must be the integral of a *local* quantity on the path (depends only on time, coordinates and their derivatives, $\dot q, \ddot q...$ at that time). This quantity is known as the **Lagrangian**, $L$. So we can write:

$S = \int_0^1 dt L(q(t), \dot q(t), \ddot q(t),... t)$

To justify this, imagine we break down the path $q(t)$ into infinitesimal pieces and minimise action in all of these segments. Since we have only local interactions, we are basically forced to write the differential of action in terms of a local quantity:

$dS(t) = L(q(t), \dot q(t), \ddot q(t),... t) dt$

However in order to have a *unique* physical path between 2 points, the Lagrangian must depend only on the coordinates and velocities and not higher order derivatives:

$L = L(q, \dot q, t)$

Now, this must be a lot of information and probably condensed too much. If you're new to this, entertain this in your head for a while and perhaps even refer to more detailed resources on this topic.
"""

# ╔═╡ ce5c4a6e-bb12-4a7a-ac71-f7d53a36ad4b
md"""
It's no accident that the expression for path length $l$ also has the form of an integral over a Lagrangian, with $L = \sqrt{\dot q^2 + 1}$. But unfortunately, it's so close yet not there. The true Lagrangian of a free particle is *defined* to be the particle's kinetic energy, giving $L(q, \dot q) = \frac{m \dot q^2}{2}$. In fact, the general prescription for any Newtonian system with (potential) forces for the Lagrangian would be the difference between total kinetic and potential energies:

$L(\vec q, \dot{\vec{q}}, t) = m \frac{\dot{\vec{q}}.\dot{\vec{q}}}{2} - V(\vec q)$

Typical textbooks on classical mechanics would've led straight to deriving a set of differential equations known as the *Euler-Lagrange* equations in order to justify the straight line trajectory. But we'll use a numerical approach.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.1"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╠═a0870100-3e86-11ed-02cd-cfbdc81b4072
# ╠═e43e57f1-8484-465f-a1e3-7cfbf97f74ff
# ╠═2c003547-5ef6-47b8-949a-d47a73fb094b
# ╠═50afa43e-17b5-4442-800d-ac5f14459260
# ╠═b79d90ab-39d0-48f7-ba4c-e7607deafccb
# ╠═1db4177d-fe0f-450e-8b51-b46f018cb664
# ╠═5c1b3fc0-7233-4e97-9009-99d3fbd8f492
# ╠═0c7d1347-b314-45d0-83b7-ef9e7ad8206d
# ╠═1b4e90f3-20e2-4069-98ee-a7d9621b13e9
# ╠═ce5c4a6e-bb12-4a7a-ac71-f7d53a36ad4b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
