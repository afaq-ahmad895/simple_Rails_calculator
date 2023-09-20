class CalculatorController < ApplicationController
    def index

    end

    def calculate
        num1 = params[:num1].to_f
        num2 = params[:num2].to_f
        operation = params[:operation]
    
        @result = case operation
                  when '+'
                    num1 + num2
                  when '-'
                    num1 - num2
                  when '*'
                    num1 * num2
                when '%'
                    num1 % num2
                when 'sqrt1' 
                    Math.sqrt(num1)
                when 'sqrt2' 
                    Math.sqrt(num2)
                when 'tan1' 
                    Math.tan(num1)
                when 'tan2' 
                    Math.tan(num2)
                when 'sin1' 
                    Math.sin(num1)
                when 'sin2' 
                    Math.sin(num2)
                when 'cos1' 
                    Math.cos(num1)
                when 'cos2' 
                    Math.cos(num2)
                when 'log1' 
                    Math.log(num1)
                when 'log2' 
                    Math.log(num2)
                  when '/'
                    num2 != 0 ? num1 / num2 : 'Error: Division by zero'
                  else
                    'Invalid operation'
                  end
    
        render 'index'
      end
    end
     
    
    
    
    
    


