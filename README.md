# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Jenna Light
Adrian Leven

## Summary
In this lab, we defined a modulo counter and a ripple counter. The D and T flip flops that we created last week in Lab 10 were vey useful for this endeavor, as well as the full adder we had also made previously.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Since the modulo counter only toggles the output when the count reaches the target value, one full period of the output signal requires two toggles. This makes the output frequency equivalent to the input clock frequency divided by 2N.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Since the flip flops we've designed start with 0, the first clock cycle sees them all toggled to 1. This causes the whole chain to toggle one as well, leaving to ripple counter to output all 1's. 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
To get about 1KHz from the 100MHz clock, we could calculate 100MHz / 2^17 which would give 763Hz. This seems to be the closest we can get to 1KHz with the ripple counter.
