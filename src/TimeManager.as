package 
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	public class TimeManager
	{
		private var playTime:int;
		private var _interval:Timer;
		private var _current_time:int;

		public function TimeManager(playTime:int)
		{
			this.playTime = playTime;
			_current_time = playTime;
			_interval = new Timer(1000,playTime);//1초마다 10번 실행..?
			_interval.addEventListener(TimerEvent.TIMER, reduceTime);
			_interval.addEventListener(TimerEvent.TIMER_COMPLETE, onTimerComplete);
			_interval.start();
		}

		public function get currentTime()
		{
			return _current_time;
		}

		private function reduceTime(event:TimerEvent)
		{
			_current_time -= 1;
			trace(_current_time, event.target.currentCount);

		}

		private function onTimerComplete(event:TimerEvent)
		{
			trace("Time is over");
		}

	}

}