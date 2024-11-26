#include maps\mp\bots\_bots;
/*
    Mod: BotDiff
    Taken from "Autobots" - Developed by DoktorSAS
*/

init()
{
	level thread setDiffBots();
	setdvar ("scr_xpscale", 1);
}

//recruit
//regular
//hardened
//veteran

setDiffBots()
{
	for(;;)
	{
		level waittill("connected", player);
		if(isBot(player))
		{
			player maps\mp\bots\_bots_util::bot_set_difficulty( common_scripts\utility::random( [ "recruit" ] ), undefined );
		}
	}
}