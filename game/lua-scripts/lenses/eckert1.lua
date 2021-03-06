FC = 0.92131773192356127802
RP = 0.31830988618379067154

hsym = true
vsym = true

max_fov = 360
max_vfov = 180

lens_width = FC * pi * 2
lens_height = FC * pi

onload = "f_contain"

function lens_forward(x,y,z)
   local lat,lon = ray_to_latlon(x,y,z)
   local x = FC * lon * (1 - RP * abs(lat))
   local y = FC * lat
   return x,y
end
