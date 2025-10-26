package states;

import flixel.input.keyboard.FlxKey;
using backend.CoolUtil;

class TitleState extends MusicBeatState
{
		public static var muteKeys:Array<FlxKey> = [FlxKey.ZERO];
	public static var volumeDownKeys:Array<FlxKey> = [FlxKey.NUMPADMINUS, FlxKey.MINUS];
	public static var volumeUpKeys:Array<FlxKey> = [FlxKey.NUMPADPLUS, FlxKey.PLUS];

	public var girl:FlxSprite;


	public override function create() {
		super.create();
		FlxG.sound.playMusic(Paths.music('freakyMenu'));
		Conductor.changeBPM(102);
		

		girl = new FlxSprite();
		girl.sparrowAtlas(['gfDanceTitle']);
		add(girl);

		Paths.clearUnusedMemory(); 
	}
}
