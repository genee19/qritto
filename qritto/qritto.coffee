showing_qrcode = false

alt_pressed_at = 0;

qrcode_url = (data, width = 150, height = 150)->
	"https://chart.googleapis.com/chart?chs=#{parseInt width, 10}x#{parseInt height, 10}&cht=qr&chl=#{encodeURIComponent data}"

$(document).on 'keyup', '*', (event)->
	if event.keyIdentifier is "Alt"
		alt_pressed_at = event.timeStamp

$(document).on 'keydown', '*', (event)->
	if event.keyIdentifier is "Alt" and event.timeStamp - alt_pressed_at <= 500
		console.log qrcode_url window.location.href 