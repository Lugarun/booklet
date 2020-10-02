---
title: Machine Learning Overview
---

## Concepts
### Degrees of Freedom
Design and train your network to be independent to every variable
that you are not attempting to identify. Do this mercilessly.
For example if you are training an image recognition network
then design your convolutional networks to not care about rotation,
translation, size, colour distortion, ecetra.
Local receptive layers are a great example of this. They make your
model independent of the position of the image.

If your model is independent of every degree of freedom in the input
space that you do not care about then your model should be more 
robust, less prone to overfitting, and be better at generalization.

This can be done by:
1. applying transformations to your input data in every way that
  you don't want to effect your output
2. designing your network structure to reflect only the information
  you actually want learned. (example local receptive fields)
3. itteratively adjust your reward functions to guide your network
  along a learning path, only moving on when your network has mastered
  the previous less complex topic
  for example pretrain a reinforcment learning shooter bot to move around a map
  and be curious about the changes this results in before giving it 
  any rewards for finding enemies

## Types of neural networks
### Feedforward Networks
So, virtually every network is a feedforward net.
#### Convolutional Networks
Virtually every image recognition network is a convolutional net.

Convolutional networks have a series of incomplete layers that
attempt to take advantage of structure in their training data.
For example in image recognition a local receptive layers are often
used. These exploit the fact that the same structure can appear
in different parts of the image and so you don't need to train
different areas of the image independently 
[nielsen2019neural](http://www.neuralnetworksanddeeplearning.com/chap6.html).

Cons:
"It is well known that DNNs, including highly trained and smooth networks
are vulnerable to adversarial perturbations" [gopinath2019property](../Resources/gopinath2019property.pdf)

## [Inductive Programming](./Inductive Programming.md)
Cons:
1. only good at generalizing simple logical tasks?


## Explore
- Finish reading [nielsen2019neural](../Resources/nielsen2019neural.pdf), then update this page
- Recurrent Neural Networks
- Long short-term memory units
- [Reinforcement Learning](./Reinforcememnt\ Learning.md)
- [Inductive Programming](./Inductive Programming.md)
