import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

 // this whole thing is a doozy, but ill do my best to explain it
 // first we itercept any command
events.onCommand(function(event as CommandEvent) {
    // storing the actual command in a variable for easier access
    val cmd = event.command;

    // if the command sent doesnt match these specific criteria, ignore it and wait for the next one
    // criteria here are checking if the command is null, if the command isnt trigger, if it does NOT have exactly 3 args, and if the first arg isnt 'mgtk_dialogueHandler'
    // if any of these checks pass, we dont do anything
    if (isNull(cmd) || (cmd.name != "trigger") || (event.parameters.length != 3) || event.parameters[0] != "mgtk_dialogueHandler") {
        return; // and yes, we are just borrowing the /trigger command and looking for what would normally be invalid syntax for it
    } else {
        if (event.commandSender instanceof IPlayer) { // is the person who sent the command a player?
            val playerName = event.commandSender.displayName.split("§")[0]; // if it is, grab their playername, which comes with a §r at the end for some reason, so we split it into 2 strings at the § and only keep the stuff from before (so the username)
            val part = event.parameters[2] as int; // convert arg 3 from string to int, put it into a variable
            if (event.parameters[1] == "philoTalk") { // check if arg 2 is 'philoTalk', if you wanna steal this and make your own dialogue stuff, this is a sort of 'identifier' for what set of messages to use
                val msgList = [ // setting up an array of strings as the set of messages, we know which one to use from arg 3
                    "/say Something seems to have gone wrong with 'philoTalk'. Please report this bug to the MagiTekkit devs!", //placeholder message for slot 0, should never be seen in game. makes it so that the first message corresponds with a '1' in arg 3
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk1\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 2\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk2\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 3\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk3\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 4\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk4\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 5\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk5\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 6\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk6\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 7\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk7\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 8\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk8\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"...click...\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger mgtk_dialogueHandler philoTalk 9\"}}]}",
                    "/tellraw " ~ playerName ~ " {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\",\"extra\":[{\"translate\":\"msg.mgtk.philoTalk9\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\".....\"}}]}"
                ] as string[]; // the \n spam clears chat, ~ playerName ~ inserts who we are going to send the tellraw to (who sees the message)
                if (msgList.length < part || part <= 0) { // check to make sure that arg 3 is valid and not too big
                    return;
                }
                server.commandManager.executeCommand(server, msgList[part]); // execute the command corresponding to arg3 from the list as the server
                if (part == 8) { // check if arg3 is 8, if it is do something special (in this case grant an advancement)
                    server.commandManager.executeCommand(server, "/advancement grant " ~ playerName ~ " only patchouli:alchemy/philo");
                }
            }
        }
        event.cancel(); // cancel the original command leaving only our own stuff to run, as assuming weve gotten this far we dont want it to throw an invalid syntax error
    }
}); // in summary, this is either the most elegant thing ive ever coded, or the most hacky, and im not really sure which. proud of it tho, feel free to use for whatever