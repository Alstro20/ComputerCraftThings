require '/ComputerCraftThings/library'

--TODO: Write pocket computer program to check on reactor stuff

turbines = {}
turbineCount = 0

for turbineIndex = 1,1000 do --TODO: Maybe change to while loop idk
    --turbineIndex is the int value of the current check, starting at 1
    --turbineStr is the string for the peripheral name
    turbineStr = 'BigReactorsTurbine_'..turbineIndex
    if peripheral.isPresent(turbineStr) then
        table.insert(turbines, turbineStr)
    else
        --Once a turbine is not found, set the turbineCount and break the loop
        turbineCount = turbineIndex-1
        break
    end
end

--DEBUG
print('DEBUG: turbine count: '..tostring(turbineCount))
print('DEBUG: turbines: '..table.concat(turbines))