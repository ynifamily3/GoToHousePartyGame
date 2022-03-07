package 
{

	import flash.display.MovieClip;
	import flash.geom.Point;


	public class Main extends MovieClip
	{
		
		private const LEFT:int = 0;
		private const RIGHT:int = 0; //나중에 static class 로 빼 놓을 예정
		
		public var timemanager:TimeManager;
		public var gb:GameButton;
		public var c:gameCharacter;

		public function Main()
		{
			//timemanager = new TimeManager(constManager.TOTAL_TIME);
			gb = new GameButton(constManager.LEFT, new Point(100,200));
			c = new gameCharacter();
			this.addChild(c);
			this.addChild(gb);
			trace(this, root, stage, root == stage, root === this);
			//b.Judge(c, 3);

		}
	}

}