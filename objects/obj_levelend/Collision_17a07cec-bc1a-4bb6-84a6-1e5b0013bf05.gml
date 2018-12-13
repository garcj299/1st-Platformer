//move to next room

with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		scr_transition(TRANS_MODE.GOTO,target);
		
		
	}
}