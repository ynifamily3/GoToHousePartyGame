package 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	public class GameButton extends MovieClip
	{
		private var kindofButton:int;
		private var gc:gameCharacter;
		private var buttonJudge:judge;
		public function GameButton(kindofButton:int, position:Point):void
		{
			// 왼쪽 0 오른쪽 1
			this.kindofButton = kindofButton;
			this.buttonMode = true;
			this.stop();
			this.x = position.x;
			this.y = position.y;
			this.addEventListener(MouseEvent.CLICK, btnClickHandler);
			
			buttonJudge = new judge();
		}

		public function get ButtonCode():int
		{
			trace("!!실행됨");
			return kindofButton;
		}

		private function btnClickHandler(e:MouseEvent)
		{
			trace(buttonJudge.gameCheck(this.ButtonCode));
		}

	}
}