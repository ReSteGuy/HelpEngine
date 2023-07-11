package ;
 
import flixel.system.FlxBasePreloader;
import openfl.display.Sprite;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.Sprite;
import flash.Lib;
import flixel.FlxG;
#if (hxCodec >= "2.6.1") import hxcodec.VideoHandler as MP4Handler;
#elseif (hxCodec == "2.6.0") import VideoHandler as MP4Handler;
#else import vlc.MP4Handler; #end
 
class Preloader extends FlxBasePreloader
{
    public function new(MinDisplayTime:Float=7, ?AllowedURLs:Array<String>) 
    {
        super(MinDisplayTime, AllowedURLs);
    }

    override function create():Void 
    {   
        var filepath:String = "assets/videos/splashIntro.mp4";
        var video:MP4Handler = new MP4Handler();
		video.playVideo(filepath);
        super.create();
    }
     
    override function update(Percent:Float):Void 
    {
        super.update(Percent);
    }
}