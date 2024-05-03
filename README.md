# population-evolution
A visual mechanism to observe individuals' genetic changes over iterations on population algorithms
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.11107044.svg)](https://doi.org/10.5281/zenodo.11107044)

![popevol-ezgif com-speed](https://github.com/Heictor/population-evolution/assets/39010251/dbf4b8e0-d875-453d-b47d-2d6044688a78)

This MATLAB function allows the user to observe the evolutive progress of its solutions population.
It produces a bar plot figure, which updates at generation steps, with the following axis:
- x-axis: Individuals
- y-axis: Variables
- z-axis: Values

The function runs after the syntax:
[populationEvol] = popevol(pop, maximal_generation, population_size)
In which the input arguments are:
- pop = A matrix with all the individuals generated over all the generations, so the number of rows is the number of individuals times the number of generations.
- maximal_generation = the number of max generations untill the algorithm stops. So the function knows the number of times to update the plot
- population_size = the number of individuals per generation. To enable the plot to group each population to its respective generation correctly.

The function generates a video file called "popevol", saved in the current folder where the code runs from.
