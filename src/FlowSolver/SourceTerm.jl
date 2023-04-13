# 目前密度是常数
function sorceTerm!(::Cylindrical, S0::Matrix, sourceTerm::Matrix, rho::Number, ga::Number, phi_field::Matrix, v_field::Matrix, grid::Grid)
    phi_u, phi_v = fieldDiff(phi_field)
    sourceTerm = (S0 - rho * v_field .* phi_field ./ grid.y_uv) .* grid.Ja + ga ./ grid.y_uv .* (-grid.x_v .* phi_u + grid.x_u .* phi_v)
end

function sorceTerm!(::Rectangular, S0::Matrix, sourceTerm::Matrix, grid::Grid)
    sourceTerm = S0 .* grid.Ja
end

