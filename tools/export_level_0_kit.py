"""Export Level 0 architectural pieces from backrooms.blend to individual GLBs.

Does not save the .blend. Geometry only: Godot applies the shared atlas material.
"""

import os
import sys

import bpy

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
BLEND = os.path.join(ROOT, "assets", "source", "blender", "backrooms.blend")
OUT_DIR = os.path.join(ROOT, "assets", "models", "environment", "level_0")

EXPORT_NAMES = [
    "Wall_Clean",
    "Wall_Dirty",
    "Wall_Scratched",
    "Wall_Wet",
    "Floor_Clean",
    "Floor_Torn_1",
    "Floor_Torn_2",
    "Tile_Clean",
    "Tile_Dirty",
    "Tile_Broken_1",
    "Tile_Broken_2",
    "Doorway_Clean",
    "Doorway_Dirty",
    "Doorway_Scratched",
    "Doorway_Wet",
    "Corner_Clean",
    "Corner_Dirty",
    "Corner_Scratched",
    "Corner_Wet",
    "Light",
]


def to_filename(object_name: str) -> str:
    return object_name.lower() + ".glb"


def export_object(src) -> None:
    original_loc = src.location.copy()
    original_rot = src.rotation_euler.copy()
    original_scale = src.scale.copy()
    src.location = (0.0, 0.0, 0.0)
    src.rotation_euler = (0.0, 0.0, 0.0)
    src.scale = (1.0, 1.0, 1.0)

    bpy.ops.object.select_all(action="DESELECT")
    src.select_set(True)
    bpy.context.view_layer.objects.active = src

    out_path = os.path.join(OUT_DIR, to_filename(src.name))
    bpy.ops.export_scene.gltf(
        filepath=out_path,
        check_existing=False,
        export_format="GLB",
        use_selection=True,
        export_apply=False,
        export_yup=True,
        export_texcoords=True,
        export_normals=True,
        export_materials="EXPORT",
        export_image_format="NONE",
        export_cameras=False,
        export_extras=False,
    )
    print("exported", src.name, "->", out_path)

    src.location = original_loc
    src.rotation_euler = original_rot
    src.scale = original_scale


def main() -> None:
    os.makedirs(OUT_DIR, exist_ok=True)
    bpy.ops.wm.open_mainfile(filepath=BLEND)

    missing = [name for name in EXPORT_NAMES if name not in bpy.data.objects]
    if missing:
        print("MISSING OBJECTS:", missing)
        sys.exit(1)

    for name in EXPORT_NAMES:
        export_object(bpy.data.objects[name])


if __name__ == "__main__":
    main()
