package 
{

	import flash.display.MovieClip;


	public class ScoreManager extends MovieClip
	{

		private var _score:uint = 0;

		public function ScoreManager(iscore:uint = 0)
		{
			this.score = iscore;
			for (var i:int = 1; i <= 6; i++)
				 MovieClip(getChildByName("s"+i)).stop();
		}

		public function set score(score:uint)
		{
			if (score >= 0 && score <= 999999)
			{
				_score = score;
			}
			else
			{
				_score = 0;
			}
			
			//화면갱신
			var ss:String = String(_score);
			var tp:uint = 6 - ss.length;
			for (var i:int = 0; i < tp; i++)
			{
				ss = "0" + ss;
			}
			
			for (i = 0; i < 6; i++)
			{
				MovieClip(getChildByName("s"+(i+1))).gotoAndStop(int(ss.charAt(i))+1);
			}
		}
		
		public function getscore()
		{
			return _score;
		}
	}
}