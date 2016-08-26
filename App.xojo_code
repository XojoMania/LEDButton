#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  GPIO.SetupGPIO
		  
		  // 4番ピンをアウトプットに指定します
		  Const kLEDPin = 4
		  // 17番ピンをインプットに指定します
		  Const kButtonPin = 14
		  
		  // ピンのモードを変更します
		  GPIO.PinMode(kLEDPin, GPIO.OUTPUT)
		  GPIO.PinMode(kButtonPin, GPIO.INPUT)
		  
		  // 処理を繰り返します
		  While True
		    // ボタンが押されていると1、押されていないと0が返ってきます
		    if GPIO.DigitalRead(kButtonPin) = 1 then
		      // LEDを光らせます
		      GPIO.DigitalWrite(kLEDPin, GPIO.ON)
		    else
		      // LEDを消します
		      GPIO.DigitalWrite(kLEDPin, GPIO.OFF)
		    end if
		    // 500ms待ちます
		    App.DoEvents(500)
		  Wend
		End Function
	#tag EndEvent


End Class
#tag EndClass
