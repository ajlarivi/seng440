import sys
import os

operations = {
    'jmp':7,
    'je':7,
    'jne':7,
    'js':7,
    'jns':7,
    'jg':7,
    'jge':7,
    'jl':7,
    'jle':7,
    'ja':7,
    'jae':7,
    'jb':7,
    'jbe':7,
    'b':7,
    'be':7,
    'bne':7,
    'bs':7,
    'bns':7,
    'bg':7,
    'bge':7,
    'bl':7,
    'ble':7,
    'ba':7,
    'bae':7,
    'bb':7,
    'bbe':7,

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
    'sar':2,
    'shr':2,

    'xor':1,
    'or':1,
    'and':1,
    'not':1, 
}

def main():
    inPath = sys.argv[1]
    output = []
    totalPower = 0
    maxPower = 0

    with open(inPath, 'r') as inFile:
        line = inFile.readline()
        blockPower = 0
        while line:
            
            line=line.strip('\n')
            if line.endswith(':'):
                output.append(';------------------------------------\n')
                output.append(f';{blockPower} units of power consumed in this block\n')
                output.append(';------------------------------------\n')
                output.append('\n')
                output.append(f'{line}\n')
                if blockPower > maxPower:
                    maxPower = blockPower

                blockPower = 0
            else:
                lineSplit = line.strip().split()
                operation = lineSplit[0]

                if operation in operations:
                    power = operations[operation]
                    blockPower += power
                    totalPower += power
                    output.append(f'{line}\t;{power} units of power consumed\n')
                else:
                    output.append(f'{line}\n')
            ##
            line = inFile.readline()

    output.insert(0, (
        f';======================================\n'
        f';======================================\n'
        f';{totalPower} units of power consumed for this entire file\n'
        f';the largest block in this file consumes {maxPower} units of power\n'
        f';======================================\n'
        f';======================================\n\n'
        ))

    splitPath = os.path.splitext(inPath)
    outPath = f'{splitPath[0]}_parsed{splitPath[1]}'

    with open(outPath, 'w') as outFile:
        for line in output:
            outFile.write(line)
       	    

if __name__ == "__main__":
    main()