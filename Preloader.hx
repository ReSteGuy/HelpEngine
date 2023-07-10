package ;
 
import flixel.system.FlxBasePreloader;
import openfl.display.Sprite;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.Sprite;
import flash.Lib;
import flixel.FlxG;
#if VIDEOS_ALLOWED
#if (hxCodec >= "2.6.1") import hxcodec.VideoHandler as MP4Handler;
#elseif (hxCodec == "2.6.0") import VideoHandler as MP4Handler;
#else import vlc.MP4Handler; #end
#end
 
class Preloader extends FlxBasePreloader
{
    public function new(MinDisplayTime:Float=7, ?AllowedURLs:Array<String>) 
    {
        super(MinDisplayTime, AllowedURLs);
    }

    override function create():Void 
    {
        this._width = Lib.current.stage.stageWidth;
        this._height = Lib.current.stage.stageHeight;
        var video:MP4Handler = new MP4Handler();
        var filepath:String = Paths.video("splashIntro");
		video.playVideo(filepath);
        super.create();
    }
     
    override function update(Percent:Float):Void 
        super.update(Percent);
    }
}