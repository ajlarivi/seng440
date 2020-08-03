import sys
import os

operations = {
    'imul':6,
    'imulq':6,
    'mulq':6,
    'idivq':6,
    'divq':6,

    'add':3,
    'sub':3,
    'subq':3,
    'subl':3,
    'addq':3,
    'addl':3,
    'inc':3,
    'dec':3,

    'sal':2,
    'shl':2,
    'shr':2,

    'xor':1,
    'or':1,
    'and':1,
    'not':1,
    'movq':1,
    'movl':1 
}

def main():
    inPath = sys.argv[1]
    output = []
    totalPower = 0

    with open(inPath, 'r') as inFile:
        line = inFile.readline()
        blockPower = 0
        while line:
            
            line=line.strip('\n')
            if line.startswith('.') and line.endswith(':'):
                output.append('#------------------------------------\n')
                output.append(f'#{blockPower} units of power consumed in this block\n')
                output.append('#------------------------------------\n')
                output.append('\n')
                output.append(f'{line}\n')
                blockPower = 0
            else:
                lineSplit = line.strip().split()
                operation = lineSplit[0]

                if operation in operations:
                    power = operations[operation]
                    blockPower += power
                    totalPower += power
                    output.append(f'{line}\t#{power} units of power consumed\n')
                else:
                    output.append(f'{line}\n')
            ##
            line = inFile.readline()

    output.insert(0, (
        f'#======================================\n'
        f'#======================================\n'
        f'#{totalPower} units of power consumed for this file\n'
        f'#======================================\n'
        f'#======================================\n\n'
        ))

    splitPath = os.path.splitext(inPath)
    outPath = f'{splitPath[0]}_parsed{splitPath[1]}'

    with open(outPath, 'w') as outFile:
        for line in output:
            outFile.write(line)
       	    

if __name__ == "__main__":
    main()