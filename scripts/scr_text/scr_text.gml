function text_gen(_size)
{
	var _chars = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890,.-{}?¡[]!\"#$%&/()=";
	var _out = "";
	
	for(var _i = 0;_i < _size;_i++)
	{
		var _c = string_char_at(_chars, floor(random_range(0, string_length(_chars)))+1);
		_out += _c;
	}
	
	return _out;
}