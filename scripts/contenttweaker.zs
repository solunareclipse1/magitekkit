#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

#Blocks
var blockSoul = VanillaFactory.createBlock("soul_block", <blockmaterial:web>);
blockSoul.setLightValue(0);
blockSoul.setBlockHardness(666.0);
blockSoul.setBlockResistance(1.0);
blockSoul.setToolClass("pickaxe");
blockSoul.setToolLevel(0);
blockSoul.setBlockSoundType(<soundtype:snow>);
blockSoul.setTranslucent(true);
blockSoul.setFullBlock(false);
blockSoul.setLightOpacity(0);
blockSoul.setReplaceable(false);
blockSoul.setEntitySpawnable(false);
blockSoul.setBlockLayer("TRANSLUCENT");
blockSoul.register();

var iridiumOre = VanillaFactory.createBlock("iridium_ore", <blockmaterial:rock>);
iridiumOre.setBlockHardness(100.0);
iridiumOre.setBlockResistance(1200.0);
iridiumOre.setBlockSoundType(<soundtype:stone>);
iridiumOre.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:ic2:misc_resource:2>);
	return;
});
iridiumOre.setToolClass("pickaxe");
iridiumOre.setToolLevel(7);
iridiumOre.register();

#Items
var iridiumCrushed = VanillaFactory.createItem("crushed_iridium");
iridiumCrushed.maxStackSize = 64;
iridiumCrushed.register();

var iridiumPurified = VanillaFactory.createItem("purified_iridium");
iridiumPurified.maxStackSize = 64;
iridiumPurified.register();

var t6slate = VanillaFactory.createItem("empowered_slate");
t6slate.maxStackSize = 64;
t6slate.register();

var rgntTime = VanillaFactory.createItem("temporal_reagent");
rgntTime.maxStackSize = 64;
rgntTime.register();

var rgntCapture = VanillaFactory.createItem("ensnaring_reagent");
rgntCapture.maxStackSize = 64;
rgntCapture.register();

var rgntKey = VanillaFactory.createItem("solitude_reagent");
rgntKey.maxStackSize = 64;
rgntKey.register();

var bloodLock1 = VanillaFactory.createItem("sanguine_locking_mechanism");
bloodLock1.maxStackSize = 64;
bloodLock1.register();

var bloodLock2 = VanillaFactory.createItem("unholy_latch");
bloodLock2.maxStackSize = 64;
bloodLock2.register();

var bloodLock3 = VanillaFactory.createItem("sinful_lock_body");
bloodLock3.maxStackSize = 64;
bloodLock3.register();

var bloodLock4 = VanillaFactory.createItem("demons_lock");
bloodLock4.maxStackSize = 64;
bloodLock4.register();

var darkGlowstone = VanillaFactory.createItem("dark_glowstone");
darkGlowstone.maxStackSize = 64;
darkGlowstone.register();

var magiCloth = VanillaFactory.createItem("alchemical_weave");
magiCloth.maxStackSize = 16;
magiCloth.register();

#Fluids
var polysteelFluid = VanillaFactory.createFluid("polysteel", Color.fromHex("FFFFFF"));
polysteelFluid.stillLocation = "contenttweaker:blocks/liquid/polysteel_still";
polysteelFluid.flowingLocation = "contenttweaker:blocks/liquid/polysteel_flow";
polysteelFluid.register();