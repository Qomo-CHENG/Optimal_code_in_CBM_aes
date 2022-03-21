<h1 align="center">Open-source for Attack-based Evaluation on Code-based Masking</h1>

This repo is created for the open-source of the paper `Information Leakage in Code-based Masking: A Systematic Evaluation by Higher-Order Attacks`, which has been submitted to *IEEE XXXX*. All the data and scripts would allow other researchers to verify and reproduce our coding-theoretic results.

We present optimal linear codes in IPM, SSS-based masking, and IPM-FD in certain cases. 
**Note that the irreducible polynomial is g(X) = X^8 + X^4 + X^3 + X +1, which is the one used in AES.** Therefore, these results in this repo are complementary to another two repos: [*OC-IPM*](https://github.com/Qomo-CHENG/OC-IPM) and [*GeneralizedCM*](https://github.com/Qomo-CHENG/GeneralizedCM), where the default irreducible polynomial g(X) = X^8 + X^4 + X^3 + **X^2** +1 is used.

<br/>

***Note 1**: all *Magma* scripts are in the folder: [*magma_scripts.*](./magma_scripts)

***Note 2**: outputs are in the folder: [*outputs.*](./outputs)

***Note 3**: WD is short for weight distribution. For weight distribution over F_2 (bit-level), we only provide the first five terms.

<br/>

## IPM with *n=2* shares

- Number of the linear code candidates: **255** (including the Boolean one)
- Number of optimal codes: **12** with the dual distance **d = 4**, and the kissing number **B_d = 4**
- Optimal parameters: $\alpha=(1, \alpha_1)$ where $\alpha_1\in\{23, 46, 51, 54, 81, 92, 95, 102, 108, 162, 165, 184\}$
- [*Magma* scripts](./magma_scripts/ipm_n2_aes.m)
- [*Output logs*](./outputs/log_ipm_n2_aes.log)

<br/>

## IPM with *n=3* shares

- Number of the linear code candidates: **65,025** in total, investigated **32,640** codes by considering the equivalence of linear codes
- Number of optimal codes: **3** with the dual distance **d = 8**, and the kissing number **B_d = 6**
- Optimal parameters: $\alpha=(1, \alpha_1, \alpha_2)$ where $(\alpha_1, \alpha_2)\in\{(27,196), (91,204), (218,240)\}$
- [*Magma* scripts](./magma_scripts/ipm_n3_aes.m)
- [*Output logs*](./outputs/log_ipm_n3_aes.log)

<br/>

## (3,1)-SSS based masking

- Number of the linear code candidates: **2,731,135** in total, investigated **32,131** codes by considering the equivalence of linear codes
- Number of optimal codes: **3** with the dual distance **d = 4**, the kissing number **B_d = 37**, and the adjusted kissing number **B'_d = 53**
- [*Magma* scripts](./magma_scripts/sss_n3_t1_aes.m)
- [*Output logs*](./outputs/log_sss_n3_t1_aes.log)

<br/>

## (5,2)-SSS based masking

- Number of the linear code candidates: **8,637,487,551** in total, investigated **2,667,126** codes by considering the equivalence of linear codes
- Optimal codes: only found one by fixing \alpha_1 = 1 and \alpha_2 = 23. The optimal one is \alpha = (1, 23, 71, 167, 235), which has: dual distance **d = 6**, the kissing number **B_d = 36**, and the adjusted kissing number is **B'_d = 46**

<br/>

## (3,1)-IPM-FD

- Number of the linear code candidates: **65,025** in total, investigated **32,640** codes by considering the equivalence of linear codes
- Number of optimal codes: **3** with the dual distance **d = 4**, and the kissing number **B_d = 37** (equivalent to optimal codes in (3,1)-SSS based masking)
- [*Output logs*](./outputs/log_ipm_fd_n3_t1_aes.log)

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