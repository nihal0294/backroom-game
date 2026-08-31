extends RefCounted

## Manual metric plan. The PNG is a visual reference; no raster data is read.
const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
## Registration correction relative to the Sector 04 seam. The manual plan is
## authored in source-map coordinates; this offset moves the complete body as
## one unit so it cannot invade Sector 04 or its Map Room.
const PLAN_OFFSET := Vector2(6.0, -6.0)

static func rooms() -> Array[Dictionary]:
	return [
		_r("S07-R01", "Dark Room", [Vector2(57.934,-9.506),Vector2(56.8,-7.2),Vector2(54.2,-7.6),Vector2(52,-9.2),Vector2(52,-13),Vector2(55.2,-13.5),Vector2(55.8,-18.2),Vector2(61.8,-18.2),Vector2(62.5,-15.2),Vector2(60.066,-11.894)], Vector2(57.6,-12.8), Vector2(9.6,11.6), "manual_ramp_east"),
		_r("S07-R02", "Sector 11 vestibule", [Vector2(47.6,-2.5),Vector2(48,1.8),Vector2(49.2,2.6),Vector2(52.8,2.2),Vector2(53.2,0.2),Vector2(52.5,-2.6)], Vector2(50.2,0), Vector2(5.2,5.1)),
		_r("S07-R03", "East transition chamber", [Vector2(32.2,-13),Vector2(36,-12.4),Vector2(40.8,-14),Vector2(40.2,-18.8),Vector2(37,-20),Vector2(32,-18.7)], Vector2(36.5,-16.4), Vector2(8.8,7.6)),
		_r("S07-R04", "Core east hall", [Vector2(25.4,-1),Vector2(30,-1.8),Vector2(31.2,-5.2),Vector2(29.6,-8),Vector2(33,-10.6),Vector2(32,-14.2),Vector2(33,-17.4),Vector2(30.8,-20.2),Vector2(25.8,-19.4),Vector2(24.8,-15.4),Vector2(26.2,-12),Vector2(24.8,-8.6)], Vector2(28.6,-10.6), Vector2(8.2,19.2)),
		_r("S07-R05", "North-east core room", [Vector2(19,4.8),Vector2(25.4,5),Vector2(28,2.2),Vector2(27,-0.6),Vector2(29.4,-3.2),Vector2(27.2,-6),Vector2(21,-5.4),Vector2(18.6,-2.4),Vector2(20,0.8)], Vector2(24,-0.4), Vector2(10.8,11)),
		_r("S07-R06", "North central room", [Vector2(12.6,4.8),Vector2(19.8,5.2),Vector2(21.5,3.4),Vector2(24.2,3.2),Vector2(25,-0.8),Vector2(22.8,-4.2),Vector2(19.2,-4),Vector2(17.8,-5.8),Vector2(13,-4.8),Vector2(13.2,-2),Vector2(11,0),Vector2(12,2.8)], Vector2(17.8,0), Vector2(14,11)),
		_r("S07-R07", "West pocket", [Vector2(4.2,1.8),Vector2(6,1),Vector2(8.2,2),Vector2(10.2,0.2),Vector2(12,0),Vector2(11,-2.2),Vector2(12,-4.2),Vector2(12,-9.2),Vector2(8,-9.2),Vector2(7,-5),Vector2(5,-3),Vector2(4.2,-1.5)], Vector2(7,-2.2), Vector2(7.8,11.0)),
		_r("S07-R08", "Central crossing", [Vector2(12,-3),Vector2(13.6,-3),Vector2(18.4,-3),Vector2(21.8,-5.8),Vector2(20,-9),Vector2(22,-12.8),Vector2(18.2,-15.4),Vector2(14,-14),Vector2(10.2,-16),Vector2(6,-13),Vector2(7.8,-8.5),Vector2(12.5,-8.5),Vector2(12.5,-5.5)], Vector2(14,-9.2), Vector2(16,13)),
		_r("S07-R09", "Torn-wallpaper vestibule", [Vector2(4,-1.3),Vector2(6,-2),Vector2(8,-3),Vector2(9,0),Vector2(8,1.8),Vector2(5.4,2),Vector2(4,1.3)], Vector2(6.5,0.0), Vector2(5.0,5.0)),
		_r("S07-R10", "South-west core room", [Vector2(10,-9),Vector2(13,-8.4),Vector2(16.8,-11),Vector2(15.8,-14.2),Vector2(17,-17.4),Vector2(12,-18),Vector2(8,-16.4),Vector2(6.5,-12)], Vector2(11,-13), Vector2(10.3,9.6)),
		_r("S07-R11", "South hall", [Vector2(9.2,-17),Vector2(14.6,-18),Vector2(19,-17),Vector2(22,-19),Vector2(21.5,-22),Vector2(25,-23.2),Vector2(29.2,-24.4),Vector2(29.6,-26.6),Vector2(27.2,-27),Vector2(23,-26),Vector2(21.8,-28),Vector2(17.8,-29.4),Vector2(14,-28),Vector2(10.8,-29.8),Vector2(8.8,-25),Vector2(10,-21.2)], Vector2(17.2,-23), Vector2(20.8,12.8)),
		_r("S07-R12", "East ring side room", [Vector2(29,-32.2),Vector2(32,-31.8),Vector2(35.6,-33.6),Vector2(35,-37.8),Vector2(31,-38),Vector2(28.8,-35.4)], Vector2(32.3,-35), Vector2(6.8,6.2)),
		_r("S07-R13", "Square-hole room", [Vector2(20.5,-36.5),Vector2(27.5,-36.5),Vector2(27.5,-43.5),Vector2(20.5,-43.5)], Vector2(24,-40), Vector2(7,7), "manual_hole_room"),
		_r("S07-R14", "Lower junction", [Vector2(14.6,-41.4),Vector2(18,-40.8),Vector2(20.5,-40.9),Vector2(20.5,-43.1),Vector2(23,-45),Vector2(21.8,-48.8),Vector2(18.4,-49.4),Vector2(14.8,-47.8),Vector2(13.8,-44.4)], Vector2(18.5,-45), Vector2(9.2,8.6)),
		_r("S07-R15", "Lower east side room", [Vector2(27.2,-40.2),Vector2(31.8,-40),Vector2(35.2,-42),Vector2(34,-45.8),Vector2(29,-46),Vector2(26.8,-43.8)], Vector2(31,-43), Vector2(8.4,6)),
		_r("S07-R16", "Nest antechamber", [Vector2(8.8,-48),Vector2(12,-47.2),Vector2(15.8,-49),Vector2(16.2,-52.8),Vector2(14.6,-55),Vector2(10.4,-54.6),Vector2(8.2,-52)], Vector2(12.2,-51.4), Vector2(8,7.8)),
		_r("S07-R17", "Nest terminal room", [Vector2(9,-54.4),Vector2(13.8,-54.6),Vector2(14.4,-57.4),Vector2(12.8,-59),Vector2(9.2,-58.6),Vector2(8.4,-56.8)], Vector2(11.5,-56.8), Vector2(6,4.6)),
	]

static func junctions() -> Array[Dictionary]:
	return [{"id":"S07-J01","name":"Sector 11 T-junction","polygon":_offset_polygon(PackedVector2Array([Vector2(47.6,-8.2),Vector2(52.6,-8.2),Vector2(53,-10),Vector2(52.8,-13.2),Vector2(48,-13.2),Vector2(47.4,-11.8)])),"center":Vector2(50.2,-10.7)+PLAN_OFFSET,"size_m":Vector2(5.6,5)}]

static func corridors() -> Array[Dictionary]:
	return [
		_c("S07-C01","First east spine",[Vector2(56.8,-10.7),Vector2(54,-10.7),Vector2(52,-11.7)],3.60),
		_c("S07-C02","Sector 11 branch",[Vector2(50,-10),Vector2(50,-5),Vector2(50,-1)],3.20),
		_c("S07-C03","Bent east spine",[Vector2(49,-11.8),Vector2(44,-13.3),Vector2(40.8,-14.7),Vector2(38,-16.5)],3.60),
		_c("S07-C04","Sector 08 branch",[Vector2(14.8,2.3),Vector2(14,7.3),Vector2(13,12.3),Vector2(11.4,18)],3.20),
		_c("S07-C05","Ring west side",[Vector2(12,-22.5),Vector2(13,-26.2),Vector2(14.8,-28.5)],3.20),
		_c("S07-C06","Ring south side",[Vector2(14.8,-28.5),Vector2(20,-31.7),Vector2(25.6,-34.9),Vector2(25.6,-36.5)],3.20),
		_c("S07-C07","Ring east side and music zone",[Vector2(25.6,-34.9),Vector2(29,-32.7),Vector2(30.8,-28.7),Vector2(28.4,-25.7)],3.20),
		_c("S07-C08","Nest neck",[Vector2(18.6,-47),Vector2(17.2,-48.9),Vector2(14,-52.7),Vector2(12,-52)],2.90),
	]

static func walkable_shapes() -> Array[PackedVector2Array]:
	var out:Array[PackedVector2Array]=[]
	for room in rooms():
		if room.construction!="manual_hole_room": out.push_back(room.polygon)
	for item in junctions(): out.push_back(item.polygon)
	for item in corridors():
		if item.id!="S07-C07": out.push_back(item.polygon)
	# C07 is split around one manually meshed bridge so the builder receives a
	# simple, hole-free union while the playable ring remains physically closed.
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(25.6,-34.9),Vector2(29,-32.7),Vector2(29.65,-31.25)]),3.20)))
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(30.15,-30.15),Vector2(30.8,-28.7),Vector2(28.4,-25.7)]),3.20)))
	# Explicit architectural joins, not raster patches.
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(28.6,-10.6),Vector2(32.5,-14),Vector2(36.5,-16.4)]),3.60)))
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(14,-9),Vector2(12,-15),Vector2(17,-23)]),3.20)))
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(10,-13),Vector2(12,-17),Vector2(16,-22)]),3.60)))
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(11.2,-9.2),Vector2(15.2,-9.2),Vector2(15.2,-3.2),Vector2(11.2,-3.2)])))
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(21.5,-15.8),Vector2(29.2,-16.0),Vector2(29.5,-10.0),Vector2(22.0,-9.5)])))
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(12.8,-22.5),Vector2(18.2,-22.5),Vector2(18.0,-17.2),Vector2(13.2,-17.2)])))
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(20.2,-13.2),Vector2(23.2,-13.2),Vector2(23.2,-9.8),Vector2(20.2,-9.8)])))
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(12.0,2.0),Vector2(15.6,2.0),Vector2(15.6,5.6),Vector2(12.0,5.6)])))
	# Broad manual landings keep the oblique ring segments as one continuous
	# 3.20 m route without relying on vertex-only polygon contact.
	out.push_back(_offset_polygon(PackedVector2Array([Vector2(12.2,-27.2),Vector2(14.2,-30.6),Vector2(17.4,-29.4),Vector2(16.0,-26.2)])))
	out.push_back(_offset_polygon(_corridor_polygon(PackedVector2Array([Vector2(27.5,-42),Vector2(30,-43)]),2.20)))
	return out

static func partitions() -> Array[Dictionary]:
	var raw=[
		["S07-PART-01",Vector2(18.2,-6.0),Vector2(20.2,-7.2)],["S07-PART-02",Vector2(12,-1),Vector2(15,-1)],
		["S07-PART-03",Vector2(18.4,1.2),Vector2(21,0.4)],["S07-PART-04",Vector2(19.2,-4),Vector2(21.4,-6)],
		["S07-PART-05",Vector2(24.8,-5.6),Vector2(27.4,-6.8)],["S07-PART-06",Vector2(26.2,-10),Vector2(29.4,-10)],
		["S07-PART-07",Vector2(29.6,-11.2),Vector2(31.8,-12.6)],["S07-PART-08",Vector2(17,-9),Vector2(19.8,-9)],
		["S07-PART-09",Vector2(12,-11),Vector2(12,-13.5)],["S07-PART-10",Vector2(15.6,-15.2),Vector2(18,-16.4)],
		["S07-PART-11",Vector2(22.8,-18.8),Vector2(25.4,-20.2)],["S07-PART-12",Vector2(30.4,-34.2),Vector2(32.8,-34.2)],
		["S07-PART-13",Vector2(16.2,-44),Vector2(18.4,-42.6)],["S07-PART-14",Vector2(10.4,-52.8),Vector2(12.4,-51.8)],
	]
	var out:Array[Dictionary]=[]
	for item in raw:
		var d:Vector2=item[2]-item[1]
		out.push_back({"id":item[0],"a":item[1]+PLAN_OFFSET,"b":item[2]+PLAN_OFFSET,"normal":Vector2(-d.normalized().y,d.normalized().x),"openings":[]})
	return out

static func columns() -> Array[Dictionary]:
	var raw=[]
	for item in [["01",Vector2(56.6,-14.2)],["02",Vector2(58.1,-15)],["03",Vector2(60,-14)],["04",Vector2(61,-16)],["05",Vector2(56.8,-16.8)],["06",Vector2(58.8,-17.2)],["07",Vector2(60.6,-17.4)],["08",Vector2(60.2,-12.9)]]: raw.push_back(["S07-COL-R01-"+item[0],item[1],0.35,"R01"])
	for item in [["01",Vector2(14.2,3.4)],["02",Vector2(15.8,3.8)],["03",Vector2(17.5,3.3)],["04",Vector2(19.2,2.6)],["05",Vector2(16.8,1.5)]]: raw.push_back(["S07-COL-R06-"+item[0],item[1],0.35,"R06"])
	for item in [["S07-COL-01",Vector2(7.0,-4.2),0.75,"R08"],["S07-COL-02",Vector2(17.2,-3.7),0.75,"R08"],["S07-COL-03",Vector2(17.0,-7.2),0.60,"R08"],["S07-COL-04",Vector2(19.6,-10.1),0.90,"R08"],["S07-COL-05",Vector2(17.8,-11.9),0.60,"R10"],["S07-COL-06",Vector2(12.6,-12.9),0.60,"R10"],["S07-COL-07",Vector2(14.4,-13.7),0.60,"R10"],["S07-COL-08",Vector2(15.6,-15.7),0.75,"R10"],["S07-COL-09",Vector2(51.7,-11.7),0.60,"J01"]]: raw.push_back(item)
	var out:Array[Dictionary]=[]
	for item in raw: out.push_back({"id":item[0],"center":item[1]+PLAN_OFFSET,"size":item[2],"zone":item[3]})
	return out

static func masses() -> Array[Dictionary]:
	return [{"id":"S07-MASS-01","center":Vector2(27.6,-11.7)+PLAN_OFFSET,"size":Vector2(1.2,2.4),"zone":"R04"},{"id":"S07-MASS-02","center":Vector2(35.6,-18.3)+PLAN_OFFSET,"size":Vector2(1.2,1.2),"zone":"R03"}]

static func props() -> Array[Dictionary]:
	return [
		_p("S07-PROP-01-Placeholder","R01",Vector2(57,-8.4),Vector3(1.6,.72,.55),.08),_p("S07-PROP-02-Placeholder","R01",Vector2(61,-13),Vector3(1.4,.78,.75),-.22),_p("S07-PROP-03-Placeholder","R01",Vector2(56.2,-17.4),Vector3(.65,.48,.65),.48),
		_p("S07-PROP-04-Placeholder","R07",Vector2(5.2,-1),Vector3(1.5,.7,.55),.1),_p("S07-PROP-05-Placeholder","R04",Vector2(28.4,-4),Vector3(1.4,.75,.7),-.3),_p("S07-PROP-06-Placeholder","R05",Vector2(23.8,2.6),Vector3(1.2,.78,.6),.18),
		_p("S07-PROP-07-Placeholder","R16",Vector2(10,-50.4),Vector3(.9,.45,.65),.62),_p("S07-PROP-08-Placeholder","R16",Vector2(14.3,-53.4),Vector3(1.1,.42,.55),-.38),_p("S07-PROP-09-Placeholder","R17",Vector2(10,-57.2),Vector3(1.1,.55,.7),.25),_p("S07-PROP-10-Placeholder","R17",Vector2(13,-56),Vector3(.75,.48,.75),-.55),
	]

static func terminals() -> Dictionary:
	return {"04":{"point":Vector2.ZERO,"width":2.6,"kind":"connected"},"06":{"point":Vector2(64.6,-5.7)+PLAN_OFFSET,"width":3.2,"kind":"capped","floor_y":-.987},"08":{"point":Vector2(11.4,18)+PLAN_OFFSET,"width":3.2,"kind":"capped"},"11":{"point":Vector2(50,-1)+PLAN_OFFSET,"width":3.2,"kind":"capped"}}

static func voids() -> Array[Dictionary]:
	return [{"id":"S07-VOID-01","polygon":_offset_polygon(PackedVector2Array([Vector2(15.2,-6),Vector2(20.5,-6),Vector2(21.5,-8.2),Vector2(16.8,-9.2)]))},{"id":"S07-VOID-02","polygon":_offset_polygon(PackedVector2Array([Vector2(18.8,-16),Vector2(24,-15),Vector2(25,-20),Vector2(20,-21)]))},{"id":"S07-VOID-RING","polygon":_offset_polygon(PackedVector2Array([Vector2(14.9,-24.6),Vector2(20.8,-27.4),Vector2(26.8,-29),Vector2(25.5,-32.3),Vector2(20,-29.6),Vector2(15.5,-27.2)]))},{"id":"S07-HOLE","polygon":_offset_polygon(PackedVector2Array([Vector2(23.5,-42),Vector2(24.7,-42),Vector2(24.7,-40.8),Vector2(23.5,-40.8)]))}]

static func fixtures() -> Array[Dictionary]:
	var raw=[[Vector2(54,-11),false],[Vector2(58,-14.8),true],[Vector2(61,-16.8),true],[Vector2(62,-9),true],[Vector2(49.8,-10.8),false],[Vector2(50,-4.5),false],[Vector2(44,-13.3),false],[Vector2(35.6,-16.4),false],[Vector2(28,-5),false],[Vector2(28.5,-15.5),false],[Vector2(22,1.5),false],[Vector2(16,0),false],[Vector2(13,8),false],[Vector2(6,-2),false],[Vector2(12,-8),false],[Vector2(18,-12),true],[Vector2(6.2,0),false],[Vector2(10,-14),false],[Vector2(16,-22),false],[Vector2(13.5,-27),false],[Vector2(20,-31.8),true],[Vector2(29.5,-30),false],[Vector2(32,-35),false],[Vector2(24,-38),false],[Vector2(18,-45),false],[Vector2(31,-43),true],[Vector2(16,-50),false],[Vector2(12,-52),true],[Vector2(11.5,-56.8),true]]
	var out:Array[Dictionary]=[]
	for i in raw.size(): out.push_back({"id":"S07-FIX-%02d"%(i+1),"point":raw[i][0]+PLAN_OFFSET,"off":raw[i][1],"rotation":i%2})
	return out

static func real_lights() -> Array[Dictionary]:
	return [{"point":Vector2(54,-11)+PLAN_OFFSET,"energy":.48,"range":6.0},{"point":Vector2(49.8,-10.8)+PLAN_OFFSET,"energy":.72,"range":7.0},{"point":Vector2(43,-13.8)+PLAN_OFFSET,"energy":.78,"range":7.5},{"point":Vector2(27.5,-8)+PLAN_OFFSET,"energy":.82,"range":8.0},{"point":Vector2(15,-5)+PLAN_OFFSET,"energy":.74,"range":7.5},{"point":Vector2(6.2,0)+PLAN_OFFSET,"energy":.70,"range":6.5},{"point":Vector2(17,-23)+PLAN_OFFSET,"energy":.60,"range":7.0},{"point":Vector2(24,-38)+PLAN_OFFSET,"energy":.52,"range":6.0}]

static func routes() -> Array[Dictionary]:
	var out: Array[Dictionary] = [{"id":"ROUTE-06-CORE","points":PackedVector2Array([Vector2(64.2,-6),Vector2(60,-10),Vector2(56,-11),Vector2(50,-10.7),Vector2(44,-13.3),Vector2(37,-16.4),Vector2(33,-17.4),Vector2(30,-18),Vector2(27,-17),Vector2(26,-14),Vector2(26,-12),Vector2(26,-11),Vector2(24.5,-10),Vector2(22,-11.5),Vector2(20.2,-11.5),Vector2(19.2,-11.5),Vector2(19.0,-13.5),Vector2(17.0,-14.5),Vector2(14.0,-12.5),Vector2(14,-9)])},{"id":"ROUTE-11","points":PackedVector2Array([Vector2(50,-10.7),Vector2(50,-5),Vector2(50,0)])},{"id":"ROUTE-08","points":PackedVector2Array([Vector2(14,-9),Vector2(14.5,-5.11),Vector2(15,-3),Vector2(16.5,0),Vector2(14.8,2.3),Vector2(12.8,2.3),Vector2(12.8,4.8),Vector2(14,7.3),Vector2(11.4,17.5)])},{"id":"ROUTE-04","points":PackedVector2Array([Vector2(14,-9),Vector2(12,-6.7),Vector2(11.2,-6.7),Vector2(10,-6.7),Vector2(9,-3),Vector2(8,0),Vector2(4,-.3)])},{"id":"ROUTE-RING","points":PackedVector2Array([Vector2(14,-18),Vector2(16,-21),Vector2(17,-23),Vector2(14,-23),Vector2(12,-22.5),Vector2(14.8,-28.5),Vector2(20,-31.7),Vector2(25.6,-34.9),Vector2(29,-32.7),Vector2(30.8,-28.7),Vector2(28.4,-25.7),Vector2(22,-23),Vector2(17,-23),Vector2(14,-18)])},{"id":"ROUTE-NEST","points":PackedVector2Array([Vector2(25.6,-34.9),Vector2(24.5,-38),Vector2(22.2,-39.2),Vector2(21.5,-40.5),Vector2(20.5,-42),Vector2(18.5,-45),Vector2(17.2,-48.9),Vector2(14,-52.7),Vector2(11.5,-56.8)])}]
	for route: Dictionary in out:
		route.points = _offset_polygon(route.points)
		if route.id == "ROUTE-04":
			route.points.append_array(PackedVector2Array([Vector2(7.5,-4.5),Vector2(5.0,-3.0),Vector2(2.5,-1.5),Vector2.ZERO]))
	return out

static func _r(id:String,name:String,points:Array,center:Vector2,size:Vector2,construction:="builder")->Dictionary: return {"id":id,"name":name,"polygon":_offset_polygon(PackedVector2Array(points)),"center":center+PLAN_OFFSET,"size_m":size,"construction":construction}
static func _c(id:String,name:String,points:Array,width:float)->Dictionary:
	var line:=_offset_polygon(PackedVector2Array(points))
	return {"id":id,"name":name,"centerline":line,"width":width,"polygon":_corridor_polygon(line,width)}
static func _p(id:String,zone:String,center:Vector2,size:Vector3,yaw:float)->Dictionary: return {"id":id,"zone":zone,"center":center+PLAN_OFFSET,"size":size,"yaw":yaw}

static func _offset_polygon(points: PackedVector2Array) -> PackedVector2Array:
	var out := PackedVector2Array()
	for point: Vector2 in points:
		out.push_back(point + PLAN_OFFSET)
	return out

static func _corridor_polygon(points:PackedVector2Array,width:float)->PackedVector2Array:
	var left:=PackedVector2Array(); var right:=PackedVector2Array(); var half:=width*.5
	for i in points.size():
		var before:=points[maxi(0,i-1)].direction_to(points[i]) if i>0 else points[0].direction_to(points[1])
		var after:=points[i].direction_to(points[mini(points.size()-1,i+1)]) if i<points.size()-1 else points[i-1].direction_to(points[i])
		var n0:=Vector2(-before.y,before.x); var n1:=Vector2(-after.y,after.x); var m:=(n0+n1).normalized()
		var offset:=m*minf(half/maxf(absf(m.dot(n1)),.5),half*1.5)
		left.push_back(points[i]+offset); right.push_back(points[i]-offset)
	var out:=PackedVector2Array(); out.append_array(left)
	for i in range(right.size()-1,-1,-1): out.push_back(right[i])
	return out
