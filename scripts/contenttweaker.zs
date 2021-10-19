#priority 9999999999999999999
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
var souliumRaw = VanillaFactory.createItem("untamed_soulium");
souliumRaw.maxStackSize = 64;
souliumRaw.register();

var iridiumCrushed = VanillaFactory.createItem("crushed_iridium");
iridiumCrushed.maxStackSize = 64;
iridiumCrushed.register();

var iridiumPurified = VanillaFactory.createItem("purified_iridium");
iridiumPurified.maxStackSize = 64;
iridiumPurified.register();

#Fluids
var polysteelFluid = VanillaFactory.createFluid("polysteel", Color.fromHex("FFFFFF"));
polysteelFluid.stillLocation = "contenttweaker:blocks/liquid/polysteel_still";
polysteelFluid.flowingLocation = "contenttweaker:blocks/liquid/polysteel_flow";
polysteelFluid.register();