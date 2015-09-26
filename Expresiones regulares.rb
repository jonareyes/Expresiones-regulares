def find_num(cuenta)
	if  /^\d{4}-\d{3}-\d{3}$/ === cuenta
		true
	else 
		false
	end
end
p find_num("1234-123-123")

def return_num_of_str(string)
	mat = string.match(/\d{4}-\d{3}-\d{3}/)
	if mat 
		mat[0]
	else
		nil
	end
end
p return_num_of_str("Cuenta: 1234-123-123")

def return_array(string)
	sca = string.scan(/\d{4}-\d{3}-\d{3}/)
end
arr = "Cuenta: 1234-123-123"
p return_array(arr)

def replace_num(string)
	mat = return_num_of_str(string)
	mask(mat)
end		

def mask(string)
	"XXXX-XXX-#{last_digits(string)}"
end

def last_digits(string)
	string.slice(-3..-1)
end

p replace_num("Cuenta: 1234-123-123")

def return_org_str(string)
	str = string.scan(/\d{4}[-\.]?\d{3}[-\.]?\d{3}/)
	if str == []
		return string
	elsif str[0].include? ?-
		return str[0]
		
	elsif str[0].include? ?.
		return str[0].gsub ".", "-"

	else str
		str1 = str[0].slice(0..3)
		str2 = str[0].slice(4..6)
	 	str3 = str[0].slice(7..9)

	 return "#{str1}-#{str2}-#{str3}"
	end  
	
end

p return_org_str("abc 1234123123 abc")
p return_org_str("abc 1234-123-123 abc")
p return_org_str("abc 1234.123.123 abc")
p return_org_str("abc 123412312 abc")

