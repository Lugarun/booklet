This book is [here](http://neuralnetworksanddeeplearning.com).
# Chapter 1
## Approach
- neural networkds iddn't surpass (traditional approaches)
   until deep learning came around in 2006
## Perceptron
- perceptron :: binary input, to binary output based on threshold,
   weighted connections, basic version of a sigmoid neuron
- a perceptron with 2 'tails' can model a nand gate, and since the
   nand gate universal for computation, a perceptron net create
   any function
- perceptron networks cannot learn like sigmoid ones can because
   a small change in input can cause a large change in output
## Sigmoid Neuron
- small changes in the input are small changes in the output
   infact small changes in the output are almost linear to small
   changes in the input

## Architecture of Neural Networks
- these layered feedforward networks are called multilayer perceptrons(MLPs)
- the art of neural network design is in designing the hidden layers
- feedforward neural networks: no loops, recurrent neural networks allow loops
- [recurrent neural networks](../Wiki/Recurrent Neural Networks.md)

## Learning with Gradient Descent
- treat the entire neural net and cost function combo as acomplex function
- then try to minimize the cost
- why can't we just find the absolute minimum?
   well the way we would do that is to find a spot at which the first derivative
   is 0, the problem is that the first derivative may be as or more complicated
   than the original question, but since it might be simpler, it is a technique
   to use the derivative to train a model instead!
- cool [link](http://mathoverflow.net/questions/25983/intuitive-crutches-for-higher-dimensional-thinking)
   to help visualize in high dimensions

- support vector machine (SVM) is actually pretty good at it too

## Towards Deep Learning

- trying to train deep neural nets with gradient descent and backpropgagation
   didn't really work as it was so slow

# Chapter 2
- explains backpropagation
 
# Chapter 3
Cross-entropy cost function:
- better cost function
- speed of learning is how far it is from answer, this is to offset the shape of the
   sigmoid curve and stop algorithms from learning slowly far away from the answer,
   it is also just a better cost function

 
Overfitting and Regularization Methods:
- better generalization

Better initialization of Weights:

Heuristics for hyperparameters:
