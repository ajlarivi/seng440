import sys 

def main():
	six = 0
	three = 0
	one = 0
	remainder = 54-int(sys.argv[1])
	print(f'difference: {remainder}')
	while(remainder>= 6):
		remainder = remainder - 6
		six += 1
	while(remainder>=3):
		remainder -= 3
		three += 1
	while(remainder>=1):
		remainder -= 1
		one += 1

	print(f'sixes: {six}')
	print(f'threes: {three}')
	print(f'ones: {one}')

if __name__ == "__main__":
    main()