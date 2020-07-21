#!/usr/bin/env bash
select=$(dmenu <<EOF
alpha α
Alpha Α
beta β
Beta Β
gamma γ
Gamma Γ
delta δ
Delta Δ
epsilon ε
Epsilon Ε
zeta ζ
Zeta Ζ
eta η
Eta Η
theta θ
Theta Θ
iota ι
Iota Ι
kappa κ
Kappa Κ
lambda λ
Lambda Λ
mu μ
Mu Μ
nu ν
Nu Ν
xi ξ
Xi Ξ
omicron ο
Omicron Ο
pi π
Pi Π
rho ρ
Rho Ρ
sigma σ
Sigma Σ
tau τ
Tau Τ
upsilon υ
Upsilon Υ
phi φ
Phi Φ
chi χ
Chi Χ
psi ψ
Psi Ψ
omega ω
Omega Ω
emptyset ∅
int ∫
to →
EOF
)
printf "$select" | cut -d ' ' -f 2 | tr -d '\n' | xclip -i -selection clipboard