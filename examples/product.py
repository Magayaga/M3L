from M3L import M3L

print(M3L.calc.product(1, 5, lambda x: x))
print(M3L.calc.product(1, 5, lambda x: M3L.square(x)))
print(M3L.calc.product(1, 5, lambda x: M3L.multiply(x, M3L.divide(M3L.PI, 180))))