def convert_base(num, to_base = 10, from_base = 10):				

	if isinstance(num, str):  
		n = int(num, from_base)
	else:
		n = int(str(num), from_base)

	alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	if n < to_base:
		return alphabet[n]
	else:
		return convert_base(n // to_base, to_base) + alphabet[n % to_base]


def variousSysSum(num1, num2, old1 = 10, old2 = 10, new = 10):		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(a + b, new, 10)


def variousSysSub(num1, num2, old1 = 10, old2 = 10, new = 10): 		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	if a < b:
		return 'nope'
	else:
		return convert_base(a - b, new, 10)


def variousSysMul(num1, num2, old1 = 10, old2 = 10, new = 10): 		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(a * b, new, 10)


def variousSysDiv(num1, num2, old1 = 10, old2 = 10, new = 10): 		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(a // b, new, 10)

def variousSysMod(num1, num2, old1 = 10, old2 = 10, new = 10): 		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(a % b, new, 10)


def variousSysMax(num1, num2, old1 = 10, old2 = 10, new = 10): 		
	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(max(a, b), new, 10)


def variousSysMin(num1, num2, old1 = 10, old2 = 10, new = 10): 		

	a = int(convert_base(num1, 10, old1))
	b = int(convert_base(num2, 10, old2))

	return convert_base(min(a, b), new, 10)


