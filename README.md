# A Finite Countermodel to Heisenberg Carrier Selection from Admissibility Axioms

This repository contains the source of a short obstruction note in the Cosmochrony non-injective foundations
sub-programme.

## Result

The note tests the published implication

\[
\text{finite faithful irreducible unitary carrier}
+ \text{minimal involutive conjugate generating pair}
+ \text{non-trivial commutator}
\Longrightarrow
\mathrm{Heis}_3(\mathbb{Z}/q\mathbb{Z}).
\]

It gives an explicit countermodel:

\[
G=S_3,\qquad X=(12),\qquad Y=(23),\qquad
\sigma(g)=(13)g(13).
\]

The standard two-dimensional representation of \(S_3\) is faithful, unitary, and irreducible.
The involution \(\sigma\) exchanges \(X\) and \(Y\), the pair minimally generates \(S_3\), and its commutator
is non-trivial.
However, the commutator is not central because \(Z(S_3)=\{1\}\).
The stated inputs therefore do not force class-two nilpotence, a finite Heisenberg group, or a Weil carrier.

The note also isolates the independent prime-order obstruction: Schur's lemma makes a central subgroup act
through one character on an irreducible complex representation.
It does not produce the non-trivial eigenspace decomposition used in the published argument.

## Scope

This is a carrier-selection obstruction, not a refutation of the mathematics developed after a Heisenberg
carrier is supplied.
Results internal to finite Heisenberg groups and Weil representations retain their stated mathematical status.
What changes is the upstream claim that the admissibility axioms uniquely select that carrier.

## Build

Requirements:

- a LaTeX installation with `pdflatex` and `bibtex`;
- the standard packages used by the `article` class.

From the repository root:

```sh
./compile.sh
```

The generated PDF is written to `out/HeisenbergCarrierObstruction.pdf`.

## Licence

The paper is released under CC BY 4.0.
