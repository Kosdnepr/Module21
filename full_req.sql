use pc_cooling;

select
	*
from
	coolers
inner join
	manufacturer
on
	coolers.manufacturer = manufacturer.id
inner join
	models
on
	coolers.models = models.id
inner join
	appliance
on
	coolers.appliance = appliance.id
inner join
	cpu_socket
on
	coolers.cpu_socket = cpu_socket.id
inner join
	gpu_compatibility
on
	coolers.gpu_compatibility = gpu_compatibility.id
inner join
	fan_size
on
	coolers.fan_size = fan_size.id
inner join
	fan_speed
on
	coolers.fan_speed = fan_speed.id
inner join
	bearing_type
on
	coolers.bearing_type = bearing_type.id
inner join
	noise_level
on
	coolers.noise_level = noise_level.id
inner join
	static_preasure
on
	coolers.static_preasure = static_preasure.id
inner join
	heatsink_type
on
	coolers.heatsink_type = heatsink_type.id
inner join
	connector_type
on
	coolers.connector_type = connector_type.id
;