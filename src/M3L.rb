#
# M3L - Magayaga Mathematical Library (v0.9.0 / May 28, 2024)
# Copyright (c) 2024 Cyril John Magayaga (cjmagayaga957@gmail.com, cyrilmagayaga@proton.me)
#

class M3L
    PI = 3.141592653589793
    E = 2.718281828459045

    def self.positive(x)
        x
    end

    def self.negative(x)
        -x
    end
    
    def self.add(*args)
        result = 0
        args.each do |num|
            result += num
        end
        result
    end
  
    def self.subtract(*args)
        result = args[0]
        args[1..-1].each do |num|
            result -= num
        end
        result
    end
  
    def self.multiply(*args)
        result = 1
        args.each do |num|
            result *= num
        end
        result
    end
  
    def self.divide(*args)
        if args[1..-1].include?(0)
            raise ArgumentError, "Cannot divide by zero"
        end
        result = args[0]
        args[1..-1].each do |num|
            result /= num.to_f
        end
        result
    end

    def self.square(x)
        x ** 2
    end
    
    def self.cube(x)
        x ** 3
    end
    
    def self.sqrt(x)
        x ** (1/2)
    end
    
    def self.cbrt(x)
        x ** (1/3)
    end

    def self.factorial(n)
        if n == 0
            1
        else
            n * factorial(n - 1)
        end
    end

    def self.log(base, x)
        raise ArgumentError, "Invalid input for logarithm" if base <= 0 || base == 1 || x <= 0
        ln(x) / ln(base)
    end

    def self.power(base, exp)
        base ** exp
    end

    def self.ln(x)
        raise ArgumentError, "Invalid input for natural logarithm" if x <= 0
        integrate(->(t) { 1 / t }, 1, x)
    end

    def self.integrate(f, a, b, n = 1000)
        dx = (b - a) / n
        integral = 0
        (0...n).each do |i|
            integral += f.call(a + (i + 0.5) * dx) * dx
        end
        integral
    end

    def self.summation(start, end, term)
        raise ArgumentError, "Start index must be less than or equal to the end index" if start > end
        result = 0
        (start..end).each do |i|
            result += term.call(i)
        end
        result
    end
    
    def self.product(start, end, term)
        raise ArgumentError, "Start index must be less than or equal to the end index" if start > end
        result = 1
        (start..end).each do |i|
            result *= term.call(i)
        end
        result
    end

    def self.limit(func, x, approach="right", epsilon=1e-6)
        unless ["right", "left"].include?(approach)
            raise ValueError, "Approach must be 'right' or 'left'"
        end
        x_approach = approach == "right" ? x + epsilon : x - epsilon
        func.call(x_approach)
    end
end
  
