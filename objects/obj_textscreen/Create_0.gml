
text_to_show[0] = text_line_1;

if(text_line_2 != ""){
	text_to_show[1] = text_line_2;
}
if(text_line_3 != ""){
	text_to_show[2] = text_line_3;
}

//text_to_show[1] = "Maybe...";


spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(text_to_show[currentline]);
text = "";