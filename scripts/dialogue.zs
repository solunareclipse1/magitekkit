import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

/* 
 * We want to register a command handler that prints a message to the player's chat if they execue the "/ct syntax" command.
 * This handler then also gives them Regeneration III for 21 seconds.
 * Command handlers are functions with a specific event type that needs to be provided.
 * Here we use the commandEvent, hence the "as CommandEvent".
 * To actually subscribe to the commandEvents we use "events.onCommand" and supply the command handler.
 * Important, the CommandEvent type needs to be imported, otherwise we'd have to use "as crafttweaker.event.CommandEvent"
 */
events.onCommand(function(event as CommandEvent) {
    //First we store the command in a local variable.
    //This way we don't always have to call "event.command.XXX" but can use "command.XXX"
    val cmd = event.command;

    //If the command is null/invalid we don't want this handler to do anything, so we return.
    //
    //If the command executed is not "crafttweaker" we don't want this handler to do anything, so we return.
    //This uses the command name, not the alias, so "/ct" would still return "crafttweaker"
    //
    //If the command was executed without any parameters (e.g. if the user called "/ct") we don't want this handler to do anything, so we return.
    //
    //If the command's first parameter is not "syntax" (e.g. if the user called "/ct help") we don't want this handler to do anything, so we return.
    if (isNull(cmd) || (cmd.name != "trigger") || (event.parameters.length != 3) || event.parameters[0] != "mgtk_dialogueHandler") {
        return;
    } else {
        if (event.commandSender instanceof IPlayer) {
            val playerName = event.commandSender.displayName.split("§")[0];
            val part = event.parameters[2] as int;
            if (event.parameters[1] == "philoTalk") {
                val msgList = [
                    "/say Something seems to have gone wrong with 'philoTalk'. Please report this bug to the MagiTekkit devs!",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk1\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 2\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk2\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 3\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk3\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 4\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk4\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 5\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk5\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 6\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk6\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 7\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk7\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 8\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk8\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 9\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk9\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\".....\"}}]}"
                ] as string[];
                if (msgList.length < part || part <= 0) {
                    return;
                }
                server.commandManager.executeCommand(server, msgList[part]);
                if (part == 8) {
                    server.commandManager.executeCommand(server, "/advancement grant " ~ playerName ~ " only patchouli:alchemy/philo");
                }
            }
        }
        event.cancel();
    }
});