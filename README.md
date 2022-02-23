<h1 align="center">Open-source for Attack-based Evaluation on Code-based Masking</h1>

This repo is created for the open-source of the paper `Information Leakage in Code-based Masking: A Systematic Evaluation by Higher-Order Attacks`, which has been submitted to *IEEE XXXX*. All the data and scripts would allow other researchers to verify and reproduce our results.

We present optimal linear codes in IPM, SSS-based masking, etc. 
**Note that the irreducible polynomial is g(X) = X^8 + X^4 + X^3 + X +1, which is the one used in AES.**

<br/>

***Note 1**: all *Magma* scripts are in the folder: [*magma_scripts.*](./magma_scripts)

***Note 2**: Some outputs are in the folder: [*outputs.*](./outputs)

<br/>

## IPM with *n=2* shares

- Number of the linear code candidates: **255**
- [*Magma* scripts](./magma_scripts/ipm_n2_aes.m)
- [*Output logs*](./outputs/log_ipm_n2_aes.log)

<br/>

## IPM with *n=3* shares

- Number of the linear code candidates: **65,025** in total, investigated **32,640** codes because of the equivalence of linear codes
- Output logs: *pending*

<br/>

## (3,1)-SSS based masking

- Number of the linear code candidates: **2,731,135** in total, investigated **32,131** codes because of the equivalence of linear codes
- [*Magma* scripts](./magma_scripts/sss_n3_t1_aes.m)
- [*Output logs*](./outputs/log_sss_n3_t1_aes.log)

<br/>

## (5,2)-SSS based masking

- Number of the linear code candidates: **8,637,487,551** in total, investigated **2,667,126** codes because of the equivalence of linear codes
- Output logs: *pending*

<br/>

## (3,1)-IPM-FD

- Number of the linear code candidates: **65,025** in total, investigated **32,640** codes because of the equivalence of linear codes
- Output logs: *pending*

<br/>

## Computing of B'_d in redundant sharings

- Consider (3,1)-SSS based masking with one of optimal parameters \alpha = (1, 51, 54)
- Results: dual distance **d = 4**, the kissing number is **B_d = 37**, and the adjusted kissing number is **B'_d = 53**
- [*Magma* scripts](./magma_scripts/compute_B_prime.m)
- [*Output logs*](./outputs/log_compute_B_prime.log)

<br/>

## Copyright and License

This repository is placed into the public domain. Anyone can redistribute it and/or modify it under the terms of the [GNU General Public License version 3.0](https://www.gnu.org/licenses/gpl-3.0.html).

Copyright (C) 2022. All Rights Reserved to Authors.