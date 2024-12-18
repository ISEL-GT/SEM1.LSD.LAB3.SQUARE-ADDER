# ADDER (4 BITS)
![Static Badge](https://img.shields.io/badge/IN-4_BIT-green)
![Static Badge](https://img.shields.io/badge/OUT-4_BIT-green)
![Static Badge](https://img.shields.io/badge/CARRY_IN-1_BIT-blue)
![Static Badge](https://img.shields.io/badge/CARRY_OUT-1_BIT-blue)

> A 4-bit Adder is a digital circuit that performs binary addition on two 4-bit numbers. It adds the corresponding bits of the two numbers along with any carry input, and produces a 4-bit sum and a carry output.
> - The **Inputs** are two 4-bit binary numbers (e.g., **A3 A2 A1 A0** and **B3 B2 B1 B0**), along with an initial **Carry-in** (C-in) for handling previous carry operations.
> - The **Outputs** are a 4-bit **Sum** (S3 S2 S1 S0) and a **Carry-out** (C-out) that indicates if there is a carry from the most significant bit (MSB).  
> The circuit uses a series of Full Adders (one for each bit) to perform the addition. Each Full Adder takes two corresponding bits from the input numbers, adds them with the carry from the previous stage, and generates the sum and carry outputs.  

---
<div align="center">

| **A** | **B** | **CARRY IN** | **CARRY OUT** | **RESULT** |
|-------|-------|--------------|---------------|------------|
| 0000  | 0000  | 0            | 0             | 0000       |
| 0000  | 0001  | 0            | 0             | 0001       |
| 0000  | 0010  | 0            | 0             | 0010       |
| 0000  | 0011  | 0            | 0             | 0011       |
| 0001  | 0001  | 0            | 0             | 0010       |
| 0001  | 0010  | 0            | 0             | 0011       |
| 0001  | 0011  | 0            | 0             | 0100       |
| 0010  | 0010  | 0            | 0             | 0100       |
| 0011  | 0011  | 0            | 0             | 0110       |
| 1111  | 1111  | 0            | 1             | 1110       |
| 0000  | 0000  | 1            | 0             | 0001       |
| 0001  | 0001  | 1            | 0             | 0011       |
| 0010  | 0010  | 1            | 0             | 0101       |
| 0011  | 0011  | 1            | 0             | 0110       |
| 1111  | 1111  | 1            | 1             | 1111       |

</div>