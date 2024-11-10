local potions = {A = 0, B = 1, C = 3, D = 5}
local p1_total, p2_total, p3_total = 0, 0, 0

local function round(enemies)
    local potion_count = 0
    for e in enemies:gmatch(".") do potion_count = potion_count + potions[e] end
    
    return potion_count + (#enemies - 1) * #enemies
end

for enemy in io.open("../__in/01_p1.txt", "r"):read():gmatch(".") do p1_total = p1_total + round(enemy) end
for enemies in io.open("../__in/01_p2.txt", "r"):read():gmatch("..") do p2_total = p2_total + round(enemies:gsub("x", "")) end
for enemies in io.open("../__in/01_p3.txt", "r"):read():gmatch("...") do p3_total = p3_total + round(enemies:gsub("x", "")) end

print(string.format("Part 1: %d", p1_total))
print(string.format("Part 2: %d", p2_total))
print(string.format("Part 3: %d", p3_total))