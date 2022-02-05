#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;

// Molten Polysteel
var polysteelFluid = VanillaFactory.createFluid("polysteel", Color.fromHex("FFFFFF"));
polysteelFluid.stillLocation = "contenttweaker:blocks/liquid/polysteel_still";
polysteelFluid.flowingLocation = "contenttweaker:blocks/liquid/polysteel_flow";
polysteelFluid.register();