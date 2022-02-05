import mods.ctintegration.advancement.AdvancementHelper;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

events.onCommand(function(event as CommandEvent) {
    val cmd = event.command;
    if (isNull(cmd) || (cmd.name != "trigger") || (event.parameters.length != 3) || event.parameters[0] != "mgtk_dialogueHandler" || event.commandSender.world.remote) {
        return;
    } else {
        if (event.commandSender instanceof IPlayer) {
            val plr as IPlayer = event.commandSender;
            val playerName = plr.name;
            val part = event.parameters[2] as int;
            if (event.parameters[1] == "philoTalk") {
                val reqAdv = AdvancementHelper.getAdvancementById(server, "patchouli:alchemy/philoget");
                val blockAdv = AdvancementHelper.getAdvancementById(server, "mgtk:backend/philotalkend");
                if ( !(plr.getAdvancementProgress(reqAdv).isDone()) || plr.getAdvancementProgress(blockAdv).isDone() ) {
                    return;
                }
                val newlines = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                val msgList = [
                    "/say Something seems to have gone wrong with 'philoTalk'. Please report this bug to the MagiTekkit devs!",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk1\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 2\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk2\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 3\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk3\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 4\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk4\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 5\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk5\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 6\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk6\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 7\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk7\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 8\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk8\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 9\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"" ~ newlines ~ "\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk9\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\".....\"}}]}"
                ] as string[];
                if (msgList.length < part || part <= 0) {
                    return;
                }
                val pitch as float = plr.world.random.nextFloat(0.75, 1.25);
                server.commandManager.executeCommand(server, "/playsound thaumcraft:brain voice " ~ playerName ~ " " ~ plr.x as string ~ " " ~ plr.y as string ~ " " ~ plr.z as string ~ " 1 " ~ pitch as string ~ " 1");
                server.commandManager.executeCommand(server, msgList[part]);
                if (part == 8) {
                    server.commandManager.executeCommand(server, "/advancement grant " ~ playerName ~ " only patchouli:alchemy/philo");
                }
                if (part == 9) {
                    server.commandManager.executeCommand(server, "/advancement grant " ~ playerName ~ " only mgtk:backend/philotalkend");
                }
            }
        }
        event.cancel();
    }
});