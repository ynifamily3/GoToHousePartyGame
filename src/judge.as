package 
{

	public class judge
	{

		public function judge()
		{
			trace("Hello");
			OrTest(false, false);
		}

		public function gameCheck(buttonCode:int):int
		{
			trace(buttonCode);
			if (buttonCode ==0)
			{
				trace("왼쪽입니다");
				// 게임 캐릭터 판별이 제대로 되었다면
				//맞춘 갯수++
				// 전체 갯수++
				constManager.TotalCharacter++;
			}
			else
			{
				trace("오른쪽입니다");
				// 게임 캐릭터 판별이 제대로 되었다면
				//맞춘 갯수++
				// 전체 갯수++
				constManager.TotalCharacter++;
			}
			return constManager.TotalCharacter;
		}
		
		public function AndTest(inChr:Boolean, target:Boolean)
		{
			trace ("Andgate test : " + inChr + " && " + target + " => " + (inChr && target));
			return (inChr && target);
		}
		
		public function OrTest(inChr:Boolean, target:Boolean)
		{
			trace ("Orgate test : " + inChr + " || " + target + " => " + (inChr || target));
			return (inChr || target);
		}

	}
	
	

}