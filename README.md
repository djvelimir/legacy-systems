# Legacy Systems

> A curated collection of production-style examples for vintage DOS compilers.

Classic MS-DOS implementations of the same problem across multiple
historical programming languages and compilers.

## Problem

Determine whether a given year is a leap year.

## Supported Languages

- Borland Turbo Assembler
- Borland Turbo Basic
- Borland Turbo C
- Borland Turbo C++
- Borland Turbo Pascal
- TopSpeed Modula-2
- Microsoft Fortran
- PC Scheme
- ALGOL 68

## Design Goals

- MS-DOS compatible
- 8.3 filename compliant
- Production-style organization
- Advanced language-specific mechanisms
- Easy to build and test

## Leap Year Rules

A year is a leap year if:

- divisible by 4
- except divisible by 100
- unless divisible by 400

### Examples

| Year | Leap |
| ---- | ---- |
| 1996 | Yes  |
| 1900 | No   |
| 2000 | Yes  |

---

## Repository Structure

```text
ASM/       Borland Turbo Assembler
BASIC/     Borland Turbo Basic
C/         Borland Turbo C
CPP/       Borland Turbo C++
PASCAL/    Borland Turbo Pascal
MODULA2/   TopSpeed Modula-2
FORTRAN/   Microsoft Fortran
SCHEME/    PC Scheme
ALGOL/     ALGOL 68
```

---

## Build Instructions

### Turbo Assembler

```dos
CD ASM
BUILD
```

### Turbo Basic

```dos
CD BASIC
BUILD
```

### Turbo C

```dos
CD C
BUILD
```

### Turbo C++

```dos
CD CPP
BUILD
```

### Turbo Pascal

```dos
CD PASCAL
BUILD
```

### TopSpeed Modula-2

```dos
CD MODULA2
BUILD
```

### Microsoft Fortran

```dos
CD FORTRAN
BUILD
```

### PC Scheme

```dos
CD SCHEME
BUILD
```

### ALGOL 68

```dos
CD ALGOL
BUILD
```

---

## Notes

- All source files use DOS CRLF line endings
- All filenames comply with 8.3 DOS restrictions
- Programs target 16-bit real-mode DOS
- Compatible with DOSBox and FreeDOS
- Source code follows compiler-era conventions

---

## Future Ideas

- File handling examples
- TSR programs
- VGA graphics demos
- Serial port communication
- EMS/XMS memory examples
- DOS networking
- Benchmark comparisons between languages

---

## License

MIT
