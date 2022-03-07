package 
{

	public class Math2
	{

		public function Math2()
		{
			trace("에러 : 이 클래스는 정적 클래스입니다.");
		}

		public static function rand(from, to)
		{
			return Math.floor(Math.random() * to + from);
		}
	}
}