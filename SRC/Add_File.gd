extends Node

var name_word = "d2h5IHlvdSBjaGVhdA==.txt"
var file_name = "y̸̫͚̭̘̾͝o̵͙͍̜̓̉̍̓ͅù̷̗̩̻͒ ̸̗͎͈͛̇ā̶̬̤͇̗r̴͎̎̏̐̕͜ḛ̶͙̞̪̍̇ ̴͈͇̄͌͠͝n̸͚̰̉͛̀ó̷̰̰͈̠́t̷͙͉̏͑̊ ̶̛̝̩́ạ̸̳́ľ̷͉͗̌͝o̶͇̩̎̍̚͘ͅú̵̲͔̿̍̊d̶̹̟̍ ̸̰̀͊̕͠t̷̨͍̰̘̔̈̌o̷̺̭̭͐̈́̔ ̷̼̘͉̖̇̀̾̋c̶̪̬͓͊̎h̸̢̛͓̆̿e̸̯̺͛͠͝ǎ̶̛̮t̷̤̉͘ ̴͉̖̪̠̋ ̶̡͙͔̖̍̈́̿̈́s̴̻͂͜͝͝i̴͕̠̓c̷̛͔̭̹͊̓ǹ̸̞͍͂e̵͇͓̜̋͂ ̸̛̠̳̝̜̔̓̑y̵̤̦͂̂͝o̷̻̗̰̅̅͜u̵̗̒̅̓ ̵̣̜̰̹́̐̋̀l̴͔̠͙̰̈͊i̶̭̝͎̓k̵̺̋̓͘ḙ̵̡͒ ̸̙̻̗̆̊̽č̷̨̹̲̀̃͜ḧ̸̫̟̱́ẽ̶̛̹̺̳̣a̶̪͕͂̊̂̓t̵̲͉̏̾̄į̶̰̔͘n̸̝̻̐ͅg̸̨̀́̽ ̵̼̱̙͍́f̴̜́́̀ͅì̵̧̨͇͖̒r̴̹̖͔͕̽͗̏̏s̴̖͓͒͋t̶̛̗̍͜ ̶̰̦̃͑̾̀h̶̦̰̟̓̄͑̑i̵̘̳̼̫͋͒͌n̴̬̖̟̏̚͝ţ̵͉̻̥̉ ̷̢͎̘̀̊\n\n\n QWw="
func _ready():
	_loading_file()

func _loading_file():
	#const _name_Image = "image.png"
	var path = OS.get_executable_path().get_base_dir() + name_word
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(file_name)
	
