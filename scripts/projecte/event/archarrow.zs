import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.entity.IEntityArrow;
import mods.contenttweaker.Commands;
import crafttweaker.player.IPlayer;

// this script file modifies archangels smite homing arrows when they spawn
events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    if (event.world.isRemote() || !(event.entity instanceof IEntityArrow)) {
        return; 
    } // if this is client-side, exit -- no need to run twice, and filter out non-arrows because thats the only thing were modifying (i love null pointers :D)
    val ent as IEntityArrow = event.entity;
    val modEnt = <entity:projecte:homing_arrow>;
    // if the entity isnt one we are looking for, dont do anything, also make sure the shooter is a player (sanity check)
    if ((isNull(ent.nbt)) || (ent.definition.id != modEnt.id) || !(ent.shooter instanceof IPlayer)) {
        return;
    } else {
        val ownr as IPlayer = ent.shooter;
        val potFx = [ // list of potion nbts for the arrow
            "{Id:2b,Amplifier:4b,Duration:60}", // slowness
            "{Id:4b,Amplifier:1b,Duration:30}", // fatigue
            "{Id:17b,Amplifier:127b,Duration:100}", // hunger
            "{Id:18b,Amplifier:2b,Duration:100}", // weakness
            "{Id:74b,Amplifier:9b,Duration:20}", // psi shock
            "{Id:86b,Amplifier:0b,Duration:20}", // time stop
            "{Id:47b,Amplifier:0b,Duration:200}", // death gaze
            "{Id:10b,Amplifier:4b,Duration:10}", // regen
            "{Id:22b,Amplifier:0b,Duration:20}", // absorption
            "{Id:45b,Amplifier:3b,Duration:1200}", // super hunger
            "{Id:24b,Amplifier:0b,Duration:2000}", // glowing
            "{Id:78b,Amplifier:9b,Duration:60}", // burnout
            "{Id:65b,Amplifier:0b,Duration:100}", // deaf
            "{Id:35b,Amplifier:0b,Duration:40}", // collapse
            "{Id:70b,Amplifier:0b,Duration:100}" // grounded
        ] as string[];
        val selectedPotion = potFx[ent.world.random.nextInt(potFx.length)];
        Commands.call("/entitydata @e[type=projecte:homing_arrow,tag=!minium] {damage:0.5d,Color:11874157,Tags:[\"minium\"],CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:0b,Duration:1}," ~ selectedPotion ~ "]}", ownr, ent.world, false, true);
    }
});