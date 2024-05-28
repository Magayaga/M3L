from M3L import M3L

A = print(M3L.random((10000, 100)))
B = print(M3L.random((100, 1000)))
C = print(M3L.random((1000, 5)))
D = print(M3L.random((5, 333)))
result = M3L.multi_dot([A, B, C, D])