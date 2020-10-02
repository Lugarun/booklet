---
title: Verifiable ML
---
## Problem Statement
Machine learning is used in safety critical applications.
It is often difficult to understand how components operate and how decisions
are made. We want to somehow get guarantees on the behaviour of these systems.

Thoughts:
- in complex systems like an autonomous vehicle it doesn't make sense to ask 
   for guarantees in fields like image recognition as images themselves aren't
   guaranteed to have full information. similarly, if we use machine learning
   to train tasks that are too complex for us to hard code. Then the task will
   be too complex for us to fully specify/test. AKA if we could hard code
   all specifications of a process then we could just hard code the process 
   right?
   So the solution is to make a mixed system, where machine learning is used
   and we forbid certain behaviours in as far as we can design them.
   We could have this forbider do it's think in real time, checking
   the ai's choices. Maybe there is a way to bake into an ai a line of logic
   that is ridgid and gives us certain guarantees about the ai's behaviour.

## Approaches
Verifying that existing ML Models are safe
- testing
- - architecture that can be guaranteed
- - reachability
- Monitoring Models at Runtime
- Teaching ML Models to be safe
 

**[Reinforcement Learning](./Reinforcememnt\ Learning.md)**:
Problems:
1. How do you train your model when failure states are unacceptable?

   There is research on how to restrict the exploration phase of reinforcement
   learning to a safe domain.

**Containerization**:
If you can't verify your model, maybe you can just restrict it to a safe domain
with some backup software that kicks in if your model leads you astray.
Problem:
1. How do you know if the model is leading you astray?

**[Inductive Programming](./Inductive Programming.md)**:
Maybe you can interconnect machine learning with symbolic logic in order
to make proving properties easier. 
[vijayakumar2018neural](../Resources/vijayakumar2018neural.pdf) does this.

**Property Inference**
[gopinath2019property](../Resources/gopinath2019property.pdf) takes inputs and 
their corresponding outputs, and then see how much they
can wiggle each input neuron while maintaining the same outputs




## To explore:
- [xian2018verification](../Resources/xian2018verification.pdf) is a good general overview
- Creat an overview of verification techniques with their strengths and weaknesses
