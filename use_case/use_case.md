# Use case

## Option 1 - Compute road-distances for e-vehicle chargers within 100km radius.

## Option 2 - Compute EU energy production/consumption index

The goal of this use-case is to calculate the energy production vs. consumption (avg. over the last 5 years) of each country in EU in order to measure a rough dependancy KPI. In other words, we want to measure *how well a country can sustain its own energy needs*.

For this, we rough assumptions / use the following restrictions:
1. We only consider countries within the EU.
2. We only consider the top 5 energy sources. 
    1. natural gas
    2. coal and other fossil fuels
    3. nuclear
    4. wind
    5. solar
3. We use basic formulas to calculate the total kw/H that can be produced by each enery source. 
4. We assume that each person in the EU roughly needs the same amount of energy.
5. We calculate our own dependancy of a country x KPI with: $$ dep_x = {total energy needed per person} \over {total energy produced per person} \times 100 $$ 