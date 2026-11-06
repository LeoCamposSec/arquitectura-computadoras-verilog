# Arquitectura de Computadoras en Verilog

Actividades de la materia *Arquitectura de Computadoras*, CUCEI, Universidad de Guadalajara (2026B). Van en orden: de un sumador armado desde compuertas hasta una ALU de 32 bits estilo MIPS.

El profesor nos dio parte del código como guía; nosotros lo adaptamos y completamos en cada actividad. Desarrollado con apoyo de IA, pero dejándolo como ultimo recurso y verificado por simulación en ModelSim.

## Actividades

| # | Actividad | Qué demuestra |
|---|---|---|
| 01 | [Sumador de 16 bits](01-sumador) | Diseño jerárquico: medio sumador → sumador completo → nibble → 16 bits |
| 02 | [Multiplexor 6 a 1](02-mux6a1) | Selección de seis operaciones aritméticas con `case` |
| 03 | [ALU MIPS de 32 bits](03-alu-mips-32) | AND, OR, suma, resta, NOR y SLT con bandera Zero |

## Proyectos más grandes

- [RARO SUPREME](https://github.com/LeoCamposSec/raro-supreme-verilog): instrucciones de 23 bits que ejecutan una ROM, una RAM y la ALU de 32 bits.

## Cómo ejecutar una actividad

Cada carpeta es independiente. Entra a la carpeta y compila todos sus archivos.

**ModelSim:** crea un proyecto con los `.v` de la carpeta, compílalos y simula el testbench.

**Icarus Verilog:**

```bash
cd 01-sumador
iverilog -o sim.out *.v
vvp sim.out
```
