AddonBuilder clone do(
    hasLib := libSearchPaths detect(path, Directory with(path) files detect(name containsSeq("libgmp")))
    if(hasLib == nil,
        writeln("GMP didn't found. Try again after installing it or check if it's available in PATH variable.")
    )

    dependsOnLib("gmp")
    dependsOnHeader("gmp.h")
)
