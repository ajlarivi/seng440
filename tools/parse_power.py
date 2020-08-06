import sys
import os

operations = {
    'b':7,
    'beq':7,
    'bne':7,
    'bcs':7,
    'bcc':7,
    'bmi':7,
    'bpl':7,
    'bvs':7,
    'bvc':7,
    'bhs':7,
    'blo':7,
    'bhi':7,
    'bls':7,
    'bge':7,
    'blt':7,
    'bgt':7,
    'ble':7,

    'mul':6,
    'umull':6,
    'smull':6,

    'add':3,
    'adc':3,
    'sub':3,
    'rsb':3,
    'sbc':3,
    'rsc':3,


    'lsl':2,
    'lsr':2,
    'asr':2,
    'ror':2,
    'rrx':2,

    'xor':1,
    'orr':1,
    'eor':1.
    'and':1,
    'bic':1,
    
    'not':1,
    'mvn':1 
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
                output.append('/*------------------------------------*/\n')
                output.append(f'/*{blockPower} units of power consumed in this block*/\n')
                output.append('/*------------------------------------*/\n')
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
                    output.append(f'{line}\t/*{power} units of power consumed*/\n')
                else:
                    output.append(f'{line}\n')
            ##
            line = inFile.readline()

    output.insert(0, (
        f'/*======================================*/\n'
        f'/*======================================*/\n'
        f'/*{totalPower} units of power consumed for this entire file*/\n'
        f'/*the largest block in this file consumes {maxPower} units of power*/\n'
        f'/*======================================*/\n'
        f'/*======================================*/\n\n'
        ))

    splitPath = os.path.splitext(inPath)
    outPath = f'{splitPath[0]}_parsed{splitPath[1]}'

    with open(outPath, 'w') as outFile:
        for line in output:
            outFile.write(line)
       	    

if __name__ == "__main__":
    main()