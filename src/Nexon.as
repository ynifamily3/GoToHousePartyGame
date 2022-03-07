package  {
	
	public class Nexon {

		public static var gamestart:Boolean = false;
		public static var appear_jang:Boolean = false;
		public static var appear_character:Boolean = false;
		public static var walking_character:Boolean = false;
		public static var walking_character2:Boolean = false;
		public static var timing:int = 0;
		public static var gg:Array = new Array("거울", "친구", "카메라");
		public static var current_jang:String = Nexon.gg[Math2.rand(1, 3)-1];
		//거울 택시 카메라 중 하나
		
		
		//0 : 아무것도 적절하지 않음, 1 : 사진찍기에 적당함 2 : 슬라이드(거울보기)가 적당함 3 : 하이파이브가 적당함
		public static var 성공여부:int = 0; //0  : 아직 , 1 : 성공함 , 2 : 성공하지 못하고 지나침
		
		public static var score:int = 0; //현재점수
		
		
		
		public static var speeds:int = 0; //캐릭터 출현 스피드
		public function Nexon() {
			trace("에러 : 정적 클래스입니다.");
		}

	}
	
}
