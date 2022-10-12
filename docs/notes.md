# Plans
- [ ] Create a Newton's laws tutorial with numerical functions *generated* from Symbolics pkg rather than hardcoding them.
  - There's a good site that alludes to the use of symbolics in physics. Precompiling symbolics generated numerical functions maybe tricky and **unnecessary** for tutorials. But maybe mention this as a sidenote.
  - Spend enough time to set this up. No hurry at all.
- I would assume people already know the math and even physics to a basic extent. Emphasis will be on computer-intensive or enabled concepts and workflow.
- An article about the advantages of Julia:
  - It's fast, has a simple syntax.
  - Easy building and reproducing of environments
  - Multiple dispatch with `struct`s. More physics-like than Python's OOP.
  - Simple and great plotting packages.
  - Symbolics that talks well with numerics
  - Easy to build and register own packages

## To do
- Start with the basics of vector calculus with simple library code and graphs.
  - [ ] Do we already have a simple library for this? The functionality in Makie with `Point` objects seems sufficient for plotting. Find a coding API that integrates nicely with Symbolics.
  - [ ] This would probably be minimal though. Maybe the first half of an exercise on Newtonian mechanics.
  - [ ] Study CairoMakie more carefully and figure out a way to make user-friendly 2D plots that don't overlap. One 3D plot can be shown for the sake of visualization though.
