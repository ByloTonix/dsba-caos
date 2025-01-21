# Homework 1: Basic Arithmetic

**Problem Statement**

Input two integer values `x` and `y`, calculate the value for the following expressions, and print their results:

1. `(x + 5) - (y - 7)`
2. `2 * x^2 - 3 * y + 4`
3. `(x + 5) / y + 10 / (y - 1)`
4. `(x / y) * y + x % y`
5. `x > y ? 1 : 0`

---

### **Notes**

1. Values \( x \) and \( y \) are assumed to be in the range \([0, 5]\).
2. In some expressions, division by zero is possible. You do not need to handle this scenario explicitly; avoid such input values.
3. A newline character (`\n`) must be printed after each integer. For example:
   ```assembly
   li a7, 11
   li a0, '\n'
   ecall
   ```

---

### **Input Format**

Two integers:
- \( x \) 
- \( y \)

---

### **Output Format**

Five integers, each printed on a new line, corresponding to the results of the given expressions.

---

### **Examples**

#### **Input**
```
1
2
```

#### **Output**
```
11
0
13
1
0
```
