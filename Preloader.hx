package ;
 
import flixel.system.FlxBasePreloader;
import openfl.display.Sprite;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.Sprite;
import flash.Lib;
import flixel.FlxG;
import vlc.MP4Handler;
 
class Preloader extends FlxBasePreloader
{
    public function new(MinDisplayTime:Float=7, ?AllowedURLs:Array<String>) 
    {
        super(MinDisplayTime, AllowedURLs);
    }

    override function create():Void 
    {
        var video:MP4Handler = new MP4Handler();
        var filepath:String = Paths.video("splashIntro");
		video.playVideo(filepath);
        super.create();
    }
     
    override function update(Percent:Float):Void 
    {
        super.update(Percent);
    }
}