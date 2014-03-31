package  {
	
	import flash.display.MovieClip;
	import flash.geom.Point;

	public class Mobius extends MovieClip {
		
		var p:Point
		var p0:Point
		public function Mobius() 
		{
			graphics.lineStyle(1,0xff0000,0)
			graphics.moveTo(0,0)
			graphics.lineTo(90,0)
			p0 = new Point(0,0)
			p = new Point(Math.cos(rotation*Math.PI/180)*90,Math.sin(rotation*Math.PI/180)*90)
			for(var i:int = 0;i<361;i++)
			{
			rotation -=1
			p.x=Math.cos(rotation*Math.PI/180)*90
			p.y=Math.sin(rotation*Math.PI/180)*90
			var pixel:MovieClip = new MovieClip
			pixel.graphics.lineStyle(10,0xeeeeee)
			pixel.graphics.moveTo(0,0)
			pixel.graphics.lineTo(0,5)
			addChild(pixel)
			pixel.x = Point.interpolate(p0,p,Math.cos(rotation*Math.PI/180)).x*2
			pixel.y = Point.interpolate(p0,p,Math.sin(rotation*Math.PI/180)).y*2
			pixel.scaleX = Math.cos(rotation*Math.PI/180)*5
			pixel.scaleX = Math.sin(rotation*Math.PI/180)*5
			}
			
		}
	}
	
}
