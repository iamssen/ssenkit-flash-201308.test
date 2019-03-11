package test.xxx.yyy.ccc {
import flash.utils.getTimer;

import ssen.devkit.at;

public class SampleTrace {
	public function SampleTrace() {
		var t:int=getTimer();
		var cnt:int=10000;
		var msg:String="hello";

		var f:int=cnt;
		while (--f >= 0) {
			trace(msg);
		}

		var traceTime:int=getTimer() - t;

		t=getTimer();

		f=cnt;
		while (--f >= 0) {
			trace(msg, at());
		}

		var logTime:int=getTimer() - t;

		trace("trace is", traceTime);
		trace("log is", logTime);
		trace("log / trace", logTime / traceTime);
	}
}
}
