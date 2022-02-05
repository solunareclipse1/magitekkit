#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

// Crushed Iridium
var iridiumCrushed = VanillaFactory.createItem("crushed_iridium");
iridiumCrushed.maxStackSize = 64;
iridiumCrushed.register();

// Purified Iridium
var iridiumPurified = VanillaFactory.createItem("purified_iridium");
iridiumPurified.maxStackSize = 64;
iridiumPurified.register();

// Empowered Slate
var t6slate = VanillaFactory.createItem("empowered_slate");
t6slate.maxStackSize = 64;
t6slate.register();

// Temporal Reagent
var rgntTime = VanillaFactory.createItem("temporal_reagent");
rgntTime.maxStackSize = 64;
rgntTime.register();

// Ensnaring Reagent
var rgntCapture = VanillaFactory.createItem("ensnaring_reagent");
rgntCapture.maxStackSize = 64;
rgntCapture.register();

// Solitude Reagent
var rgntKey = VanillaFactory.createItem("solitude_reagent");
rgntKey.maxStackSize = 64;
rgntKey.register();

// Soul Lock Piece (Sanguine Mechanism)
var bloodLock1 = VanillaFactory.createItem("sanguine_locking_mechanism");
bloodLock1.maxStackSize = 64;
bloodLock1.register();

// Soul Lock Piece (Unholy Latch)
var bloodLock2 = VanillaFactory.createItem("unholy_latch");
bloodLock2.maxStackSize = 64;
bloodLock2.register();

// Soul Lock Piece (Sinful Body)
var bloodLock3 = VanillaFactory.createItem("sinful_lock_body");
bloodLock3.maxStackSize = 64;
bloodLock3.register();

// Soul Lock Piece (Demon's Lock)
var bloodLock4 = VanillaFactory.createItem("demons_lock");
bloodLock4.maxStackSize = 64;
bloodLock4.register();

// Shaded Glowstone
var darkGlowstone = VanillaFactory.createItem("dark_glowstone");
darkGlowstone.maxStackSize = 64;
darkGlowstone.register();

// Alchemical Weave
var magiCloth = VanillaFactory.createItem("alchemical_weave");
magiCloth.maxStackSize = 16;
magiCloth.register();