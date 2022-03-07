package 
{

	import flash.display.MovieClip;


	public dynamic class CharacterMgr extends MovieClip
	{

		/*
		완전 랜덤으로 처리하기로 하였음.
		
		private const RACE_WHITE:int = 1;
		private const RACE_YELLOW:int = 2;
		private const RACE_BLACK:int = 3;
		
		private const HAIRSTYLE_ONE:int = 1;
		private const HAIRSTYLE_TWO:int = 2;
		private const HAIRSTYLE_THREE:int = 3;
		private const HAIRSTYLE_FOUR:int = 4;
		private const HAIRSTYLE_FIVE:int = 5;
		*/
		private const GENDER_MALE:int = 1;
		private const GENDER_FEMALE:int = 2;

		private const EMOTION_ONE:int = 1;
		private const EMOTION_TWO:int = 2;
		private const EMOTION_THREE:int = 3;
		private const EMOTION_FOUR:int = 4;
		private const EMOTION_FIVE:int = 5;
		
		private const DRESS_ONE:int = 1;
		private const DRESS_TWO:int = 2;
		private const DRESS_THREE:int = 3;
		private const DRESS_FOUR:int = 4;
		private const DRESS_FIVE:int = 5;
		
		private const BEER_ONE:int = 1;
		private const BEER_TWO:int = 2;
		private const BEER_THREE:int = 3;
		private const BEER_FOUR:int = 4;
		private const BEER_FIVE:int = 5;
		
		private const PROGRESS_NONE:int = 0; //다 벗음
		private const PROGRESS_WEAR:int = 1; //옷만 입음
		private const PROGRESS_COMPLETE:int = 2; //술까지 들었음 (완성)


		public var gender:int;
		public var body:int;
		public var emotion:int;
		
		public var dress:int;
		public var beer:int;
		
		private var _progress:int = PROGRESS_NONE; //캐릭터의 현재 상태

		public function CharacterMgr()
		{
			if(this.name == "player") {
				pannel.visible = false; //패널 숨기기
			}
			else if(this.name == "curent" || this.name == "next") {
				_progress = PROGRESS_COMPLETE; //완성된 상태를 보여 주어야 한다.
			}
		}
		
		public function character_draw(pool:String)
		{
			if(this.name == "player") {
				dresscodes.visible = false;
				beers.visible = false;
			}
			if(pool.length != 5) {
				trace("에러 : 알 수 없는 캐릭터 타입");
			}
			else {
				this.gender = int(pool.charAt(0));
				this.temp = this.gender == GENDER_MALE ? 0 : 15;
				trace(this.gender, this.temp);
				switch (pool.charAt(1))
				{
					case "A" :
					bodys.gotoAndStop(10 + this.temp);
					break;
					case "B" :
					bodys.gotoAndStop(11 + this.temp);
					break;
					case "C" :
					bodys.gotoAndStop(12 + this.temp);
					break;
					case "D" :
					bodys.gotoAndStop(13 + this.temp);
					break;
					case "E" :
					bodys.gotoAndStop(14 + this.temp);
					break;
					case "F" :
					bodys.gotoAndStop(15 + this.temp);
					break;
					default :
					bodys.gotoAndStop(int(pool.charAt(1)) + this.temp);
					break;
				}
				this.temp = this.gender == GENDER_MALE ? 0 : 5;
				emotions.gotoAndStop(int(pool.charAt(2)) + this.temp);
				dresscodes.gotoAndStop(int(pool.charAt(3)) + this.temp);
				beers.gotoAndStop(int(pool.charAt(4)));
				if(_progress >= PROGRESS_WEAR)
				{
					dresscodes.visible = true;
				}
				if(_progress >= PROGRESS_COMPLETE)
				{
					beers.visible = true;
				}
			}
		}
	}
}
