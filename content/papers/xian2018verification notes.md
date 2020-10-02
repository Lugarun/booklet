# Verification for Machine Learning, Autonomy, and Neural Networks Survey

## Overview
Goal: Provide overview of verification techniques for autonomous systems.
Method:
1. Focus on Autonomous Cyber-Physical Systems

This paper seems really good.


## 1. Motivation and Prevalence:*
- recent ML progress is largely statistical
- recent formal methods is symbolic

## 2. Applications: Autonomous Driving
Intro
- two autonomous driving approaches: mediated perception, behavior reflex
- mediated perception: sub-components for idientifing surounding objects,
   AI based engine uses this info of surroundings to control car
- behavior reflex: direct mappings from input to driving actions

Verification Approaches
- [alexander2018state](../Resources/alexander2018state.pdf)    : problems facing verification from solved to unsolved
- [tuncali2018simulation](../Resources/tuncali2018simulation.pdf) : simulation based testing of autonomous ai's

## 3. Architecture: Safe Monitoring and Control
Intro
- we can't verify all parts of an ai
- best methods:
  - safety architectures
  - runtime monitoring
  - runtime verification
  - runtime assurance

Reachability:  all states that a computational system can achieve given it's initial state

- [bak2014realtime](../Resources/bak2014realtime.pdf): periodically-scheduled controller, use altered automata to analyze
   reachability anaysis doesn't work so they propose embedding the periodic system in an
   abstract continuous system
- [bak2015periodically](../Resources/bak2015periodically.pdf) realtime reachability
- [vijayakumar2018neural](../Resources/vijayakumar2018neural.pdf) combines symbolic logic with stat models giving: better generaliztion, guaranteed correctness,
   fast, limited data requirements
- [saunders2017trial](../Resources/saunders2017trial.pdf) human intervention reinforcement learning

I will need to reread this section after I know more.
I don't understand what reachability is.

## 4. Intelligent Control
Intelligent control includes many sub-domains like: neural networks, machine 
learning, bayesian probability, fuzzy logic, neuro-fuzzy hybridization

This section focuses on intelligent control using neural networks (future revisions will contain more)

Background:
- (43) contains brief history of NN
- (93) foundational knowledge of how NNs and RNNs are used

Next there are 7 pages of papers presented that I haven't gone through yet

## 5 Learning: Specification Inference and Learning
### Automata Learning
### Safe Reinforcement Learning
Intro
- trial and error learning
- good for situations in which the environment is to difficult to model
- good for game playing, robotics, industrial automation, autonomous vehicles, financial models, structured prediction
- good for low dimensional problems but has scaling issues 
   but promising work in deep reinforcement learning
   checkout a [survey][arulkumaran2017brief](../Resources/arulkumaran2017brief.pdf) of deep reinforcement learning
 
[Reinforcement learning for autonomous driving] (shalev-shwartz2016safe)

In classical reinforcement-learning architecture, an agent interacts with it's 
surroundings through observations and actions described by a Markov Decision Process [arulkumaran2017brief](../Resources/arulkumaran2017brief.pdf).
At each action a reinforcement value is given and the agent is trained to maximize long term
reinforcement sums. [Here][pack1996reinforcement](../Resources/pack1996reinforcement.pdf) is an older servey on a bunch of these algorithms, there are 
also a bunch [here][arulkumaran2017brief](../Resources/arulkumaran2017brief.pdf).


There are two main approaches to creating safe reinforcement learning architectures:
1. add a notion of risk into the reward process
2. modify exploration process to include likelihood of entering error states
This is discussed in [garcia2015comprehensive](../Resources/garcia2015comprehensive.pdf)

- [perkins2003lyapunov](../Resources/perkins2003lyapunov.pdf) :  Lyapunov style where you limit the set of actions that an agent can take.
- [berkenkamp2017safe](../Resources/berkenkamp2017safe.pdf) : Lyapunov similar to 100 but extended to give safety guarantees
   concern that limiting the environments state prevents the model from learning as well
   (akametalu) address these concerns

- [thomas2015safe](../Resources/thomas2015safe.pdf) : phd thesis on safe reinforcement learning
- [gillula2012guaranteed](../Resources/gillula2012guaranteed.pdf) : combine reachability analysis and online reinforcement learning

Another promising area of safe reinforcement learning: model checking algorithms and methods (formal verification)

- [alshiekh2017safe](../Resources/alshiekh2017safe.pdf) : temporal logic specification: first list safe options for agent, then allow agent to be free
   only interfering where necessary
- [pathak2018verification](../Resources/pathak2018verification.pdf) : probabilistic model checking to verify and repair learned policies (also provide benchmark)
- [fulton2018safe](../Resources/fulton2018safe.pdf) : combine formal verification and runtime monitoring (also computer checked saftey proofs) (similar to much of whats in [garcia2015comprehensive](../Resources/garcia2015comprehensive.pdf)

- [kumar2017introduction](../Resources/kumar2017introduction.pdf) : ml models susceptible to attacks during learning process, adversarial ml addresses this
- [pinto2017robust](../Resources/pinto2017robust.pdf) : adversarial ml used to create robust, generalizing agent

## 6 Verification for AI/ML Components and Systems
### Verification: Neural Network Reachability
### Testing for Adversarial Machine Learning Examples
### Other Approches
