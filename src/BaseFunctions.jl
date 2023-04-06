abstract type AbstractBound end
struct bound <: AbstractBound
    fun::Function
    span::Vector
    u::Function
    v::Function
    p::Function
    bound(fun::Function,span::Vector,u::Function,v::Function,p::Function)=new(fun,span,u,v,p)
end

function bound(fun::Function,span::Vector)
    u(t)=0
    v(t)=0
    p(t)=0
    bound(fun,span,u,v,p)
end

struct extraBounds <: AbstractBound
    name::Symbol
end