#Intro
Reinforcement learning is when an agent learns via trial-and-error interactions
with a dynamic environment(unsupervised).

## Basics

Initialize the agent randomly, then let interact with it's environment
a whole bunch of times while storing the state chain and actions taken.
Then evaluate each interaction session and use this evaluate to discourage
actions taken in bad sessions/encourage actions taken in good sessions.
This is called policy Gradients.
Main problem is called credit assignment problem: there are millions of 
variables and only a dozen session evaluations, how does the network 
figure out which variables caused the session evalutations?
Learned [here](https://www.youtube.com/watch?v=JgvyzIkgxF0) and then
[here](http://karpathy.github.io/2016/05/31/rl/)


## Reserach
Some RL algorithms can be viewed as Markov Descision processes where only the current
state affects the next state. Others can be viewed as Partially observable Markov
Desision Processes which typically maintain a "belief" of the current state
given the previous "belief" state. [arulkumaran2017brief](../Resources/arulkumaran2017brief.pdf)

There are two main approaches to solving RL problems:
1. value function methods
   - Estimating the value of any given state 
2. policy search methods
   - 




#Papers

Brief reinforcement learning survey from 2017 [arulkumaran2017brief](../Resources/arulkumaran2017brief.pdf)

Large reinforcement learning survey from 1996 [pack1996reinforcement](../Resources/pack1996reinforcement.pdf).
