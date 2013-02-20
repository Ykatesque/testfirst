def ftoc(degree)
	newdeg = degree - 32.0
	result = newdeg * (5.0/9.0)
	return result
end

def ctof(degree)
	
	step1 = degree * (9.0/5.0)
	step2 = step1 + 32.0
	return step2

end

