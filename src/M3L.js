/*
 * M3L - Magayaga Mathematical Library (v0.9.2 / July 23, 2024)
 * Copyright (c) 2024 Cyril John Magayaga (cjmagayaga957@gmail.com, cyrilmagayaga@proton.me)
 */

// Define the M3L class
var M3L = {
    positive: function(x) {
        return x;
    },

    negative: function(x) {
        return -x;
    },

    add: function(...args) {
        return args.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
    },

    subtract: function(...args) {
        return args.reduce((accumulator, currentValue) => accumulator - currentValue, 0);
    },

    multiply: function(...args) {
        return args.reduce((accumulator, currentValue) => accumulator * currentValue, 0);
    },

    divide: function(...args) {
        return args.reduce((accumulator, currentValue) => accumulator / currentValue, 0);
    },

    square: function(x) {
        return x ** 2;
    },

    cube: function(x) {
        return x ** 3;
    },

    sqrt: function(x) {
        return x ** (1/2);
    },

    cbrt: function(x) {
        return x ** (1/3);
    },

    power: function(base, exp) {
        return base ** exp;
    },

    factorial: function(n) {
        if (n === 0 || n === 1) {
            return 1;
        }
        let result = 1;
        for (let i = 2; i <= n; i++) {
            result *= i;
        }
        return result;
    },

    trim: {
        sin: function(x) {
            let result = 0;
            for (let i = 0; i < 10; i++) {
                const coef = Math.pow(-1, i);
                const num = Math.pow(x, 2 * i + 1);
                const denom = M3L.factorial(2 * i + 1);
                result += coef * (num / denom);
            }
            return result;
        },

        cos: function(x) {
            let result = 0;
            for (let i = 0; i < 10; i++) {
                const coef = Math.pow(-1, i);
                const num = Math.pow(x, 2 * i);
                const denom = M3L.factorial(2 * i);
                result += coef * (num / denom);
            }
            return result;
        },

        tan: function(x) {
            return this.sin(x) / this.cos(x);
        },

        csc: function(x) {
            return 1 / this.sin(x);
        },

        sec: function(x) {
            return 1 / this.cos(x);
        },

        cot: function(x) {
            return 1 / this.tan(x);
        },
    }
};
