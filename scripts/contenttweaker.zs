#priority 9999999999999999999
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var polysteelFluid = VanillaFactory.createFluid("polysteel", Color.fromHex("FFFFFF"));
polysteelFluid.stillLocation = "contenttweaker:blocks/liquid/polysteel_still";
polysteelFluid.flowingLocation = "contenttweaker:blocks/liquid/polysteel_flow";
polysteelFluid.register();