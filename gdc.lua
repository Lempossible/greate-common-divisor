local function gcd(a,b)
    local temp
    if (a < b) then
        temp = a
        a = b
        b = temp
    end

    while (b ~= 0)
    do
        temp = a % b
        a = b
        b = temp
    end

    return a;
end

local function max_gcd(arr, len)
    if len == 1 then
        return arr[1]
    end

    k = arr[1]
    for r=1, len-1 do
        k = gcd(k, arr[r+1])
    end

    return k
end
