#
# M3L - Magayaga Mathematical Library (v0.9.0 / May 28, 2024)
# Copyright (c) 2024 Cyril John Magayaga (cjmagayaga957@gmail.com, cyrilmagayaga@proton.me)
#

class M3L
    PI = 3.141592653589793
    E = 2.718281828459045
  
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
end
  
