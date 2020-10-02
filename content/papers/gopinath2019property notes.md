
First Readthrough:
- mine convex predicates on the input space that imply given output properties
- properties of the form $PRE \implies POST$
- impose a binary classification on neurons to keep thing simple
- input properties based on patterns that constrain the activation status
   of neurons up to an intermediate layer
- two methods to extract network properties
   1. iteratievely refine decision patterns using Reluplex to prove results
   2. decision tree learning to directly learn layer patterns from data
- crazy **idea** while reading: what if you only mine one property per safety
   concern and then use smoothness guarantees to show that the network stays
   away from bad areas
- layer properties may capture common characteristics over extracted features
- decision patterns specify activation status of a subset of neurons they
   try to get the smallest decision patterns that gurarntee a certain output

So, they basically just take an input and it's corresponding output, and then see how much they
can wiggle each input neuron while maintaining the output
