--Operation functions
local function add(number1,number2)
    if type(number1) ~= "number" or type(number2) ~= "number" then
        error("Following input wasnit a number");
    else
        return number1 + number2
    end
end
local function squarerut(number)
    if type(number) ~= "number" then
        error("Given inputs arent valid numbers")
    else
        return math.sqrt(number)
    end
end
local function power(base,exponent)
    if type(base) ~= "number" or type(exponent) ~= "number"  then
        error("Given inputs arent valid")
    else 
        return base ^ exponent
    end
end
local function rem(number1,number2)
    if type(number1) ~= "number" or type(number2) ~= "number" then
        error("Given inputs arent valid numbers")
    else
        return number1 % number2;
    end
end
local function quo(number1,number2)
    if type(number1) ~= "number" or type(number2) ~= "number" then
        error("Given inputs arent valid numbers")
    else
        return number1 / number2;
    end
end
local function sub(number1,number2)
    if type(number1) ~= "number" or type(number2) ~= "number" then
        error("Given inputs arent valid numbers")
    else
        return number1 - number2;
    end
end
local function pro(number1,number2)
    if type(number1) ~= "number" or type(number2) ~= "number" then
        error("Given inputs arent valid numbers")
    else
        return number1 * number2;
    end
end

--Main function
local function Main()
    print("Enter your operation method: ")
    local operator = io.read(1)
    if operator == "+" then
        print("Enter your first number: ")
        local first_number = io.read("*n")
        if type(first_number) ~="number" then
            print("Invalid input was given")
        else
            print("Enter your second number: ")
            local second_number = io.read("*n")
            if type(second_number) ~= "number" then
                print("Invalid input was given")
            else
                local result = add(first_number,second_number);
                print(first_number.. " + " ..second_number.. " gives " ..result)
            end
        end
    elseif operator == "-" then
        print("Enter your first number: ")
        local first_number = io.read("*n")
        if type(first_number) ~= "number" then
            print("Invalid input was given")
        else
            print("Enter your second number: ")
            local second_number = io.read("*n")
            if type(second_number) ~= "number" then
                print("Invalid input was given")
            else
                local result = sub(first_number,second_number)
                print(first_number.. " - " ..second_number.. " gives " ..result)
            end
        end
    elseif operator == "/" then
        print("Enter your first number: ")
        local first_number = io.read("*n")
        if type(first_number) ~= "number" then
            print("Invalid input was given")
        else
            print("Enter your second number: ")
            local second_number = io.read("*n")
            if type(second_number) ~= "number" then
                print("Invalid input was given")
            else 
                local result_rem = rem(first_number,second_number)
                local result_quo = quo(first_number,second_number)
                print(first_number.. " / " ..second_number.. " gives " ..result_quo.. " as quotient " ..result_rem.. " as remainder")
            end
        end
    elseif operator == "*" then
        print("Enter your first number: ")
        local first_number = io.read("*n")
        if type(first_number) ~= "number" then
            print("Invalid input was given")
        else 
            print("Enter your second number")
            local second_number = io.read("*n")
            if type(second_number) ~= "number" then
                print("Invalid input was given")
            else
                local result = pro(first_number,second_number)
                print(first_number.. " * " ..second_number.. " gives " ..result)
            end
        end
    elseif operator == "s" then
        print("Enter your number: ")
        local first_number = io.read("*n")
        if type(first_number) ~= "number" then
            print("Invalid input was given")
        else
            local result = squarerut(first_number)
            print("Square root of "..first_number.." is "..result)
        end
    elseif operator == "p" then
        print("Enter your base number: ")
        local base_number = io.read("*n")
        if type(base_number) ~= "number" then
            print("Invalid input was given")
        else
            print("Enter your exponent number: ")
            local exponent_number = io.read("*n")
            if type(exponent_number) ~= "number" then
                print("Invalid input was given")
            else
                local result = power(base_number,exponent_number)
                print(base_number.."^"..exponent_number.." gives "..result)
            end           
        end
    elseif operator == "a" then
        print("Enter your first number: ")
        local first_number = io.read("*n")
        if type(first_number) ~= "number" then
            print("Invalid input was given")
        else 
            print("Enter your second number: ")
            local second_number = io.read("*n")
            if type(second_number) ~= "number" then
                print("Invalid input was given")
            else
                local result_add = add(first_number,second_number)
                local result_sub = sub(first_number,second_number)
                local result_quo = quo(first_number,second_number)
                local result_rem = rem(first_number,second_number)
                local result_pro = pro(first_number,second_number)
                local result_pow = power(first_number,second_number)
                local result_sq_ = squarerut(first_number)
                local result_sq__ = squarerut(second_number)
                print(first_number.." + "..second_number.." gives "..result_add)
                print(first_number.." - "..second_number.." gives "..result_sub)
                print(first_number.." / " ..second_number.. " gives "..result_quo.." as quotient and "..result_rem.." as remainder")
                print(first_number.." * "..second_number.." gives "..result_pro)
                print(first_number.." ^ "..second_number.." gives "..result_pow)
                print("Square root of "..first_number.." is "..result_sq_)
                print("Square root of "..second_number.." is "..result_sq__)
            end
        end
    else 
        print("No valid input was passed")
    end

end

Main()