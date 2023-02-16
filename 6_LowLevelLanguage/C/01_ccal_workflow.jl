##################################################
# option 1: using ccal() function
##################################################

# use Dynamic Linker standard library

using Libdl

#create a library pointer

lib = dlopen(joinpath(pwd(),"libworkflow"))

# create function pointer

func = dlsym(lib,"myadd")

# initialize variables

x = y = 0

# create wrapper 

function myadd(x, y)
    ccall(func, Cint, (Cint, Cint), x, y)
end

# test function in julia

myadd(2, 3)

myadd(-7,4)

##################################################
# Option 2: using @ccal macro
##################################################

# use Dynamic Linker standard library

using Libdl

#create a library pointer

lib = dlopen(joinpath(pwd(),"libworkflow"))

# create function pointer

func = dlsym(lib,"myadd")

# initialize variables

x = y = 0

# create wrapper 

function myadd(x, y)
    # ccall(func, Cint, (Cint, Cint), x, y)
    @ccall $func(x::Cint, y::Cint)::Cint
end

# test function in julia

myadd(2, 3)

myadd(-7,4)