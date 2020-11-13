module Utils

using InteractiveUtils

function subtypetree(roottype, level=1, indent=4)
    level == 1 && println(roottype)
    for s in subtypes(roottype)
        println(join(fill(" ", level * indent)) * string(s))
        subtypetree(s, level + 1, indent)
    end
end

export subtypetree

end