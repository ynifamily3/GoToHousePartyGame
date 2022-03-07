package  {
	
	import flash.display.MovieClip;
	import flash.utils.setInterval;
	import flash.utils.clearInterval;
	
	public class HouseParty extends MovieClip {
		
		private const NONE = -1;
		private const GAME_READY = 0;
		private const GAME_PROGRESS = 1;
		private const GAME_OVER = 2;
		
		private var timeMgrIntervalID:uint;
		
		private var game_status:uint = NONE;
		private var game_time:int = 60;
		private var remain_time:int = game_time;
		
		
		/*
		캐릭터 풀 리스트. 첫번째 : 성별, 두번째 : 몸체(인종 / 헤어스타일 포함), 세번째 : 표정, 네번째 : 드레스코드, 다섯번째 : 술 코드
		range
			성별		1 - 2
			몸체 		1 - F (1 2 3 4 5 6 7 8 9 A B C D E F)
			표정		1 - 5
			드레스코드  0 - 5
			술코드 		0 - 5
			0 : before 상태
		*/
		var characterlist:Array = ["23513", "23111"];
		
		public function HouseParty() {
			timegage.gotoAndStop(1);
			player.character_draw(characterlist[0]);
			gameready();
		}
		
		public function gameready() {
			game_status = GAME_READY;
		}
		
		public function gamestart() {
			game_status = GAME_PROGRESS;
			timegage.gotoAndStop(1);
			timeMgrIntervalID = setInterval(reduce_time, 1000);
		}
		
		private function reduce_time()
		{
			--remain_time;
			if (remain_time < 1)
			{
				trace("게임 오버");
				clearInterval(timeMgrIntervalID);
			}
			else
			{
				timegage.nextFrame();
			}
		}
	}
	
}
