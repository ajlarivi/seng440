import sys
import os
import argparse

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
    'eor':1,
    'and':1,
    'bic':1,
    'not':1,
    'mvn':1 
}

def parseAssembly(inPath):
    
    output = []
    totalPower = 0
    maxPower = 0
    blockPowers = []

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
                blockPowers.append(blockPower)
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

    output.insert(0, f'/*======================================*/\n')
    output.insert(1, f'/*======================================*/\n')
    output.insert(2, f'/*{totalPower} units of power consumed for this entire file*/\n')
    output.insert(3, f'/*the largest block in this file consumes {maxPower} units of power*/\n')
    output.insert(4, f'/*======================================*/\n')
    output.insert(5, f'/*======================================*/\n')



    return output, blockPowers, maxPower

def addDummyInstructions(output, blockPowers, maxPower):
    newOutput = []
    blockCounter = 1
    lineCounter = 0
    addDummy = False
    firstBlock = True
    print(blockPowers[0])
    for line in output:
        lineCounter += 1
        if line.strip('\n').endswith(':') and not firstBlock:
            if addDummy:
                instructions = computeNumInstructions(maxPower, blockPowers[blockCounter])
                for x in range(instructions[0]):
                    newOutput.insert(-lineCounter+1, '\tmul r15, r15 /*dummy operation*/\n')
                for x in range(instructions[1]):
                    newOutput.insert(-lineCounter+1, '\tadd r15, r15 /*dummy operation*/\n')
                for x in range(instructions[2]):
                    newOutput.insert(-lineCounter+1, '\tand r15, r15 /*dummy operation*/\n')
            addDummy = False
            blockCounter += 1
            lineCounter = 0

        if line.strip('\n').endswith(':') and firstBlock:
            firstBlock = False
            lineCounter = 0

        lineStrip = line.strip()

        if lineStrip and not lineStrip.startswith('.') and not lineStrip.startswith('/'):
            addDummy = True


        newOutput.append(line)
        

    return newOutput

def computeNumInstructions(maxPower, blockPower):
    six = 0
    three = 0
    one = 0
    remainder = maxPower-blockPower
    #print(f'difference: {remainder}')
    while(remainder>= 6):
        remainder = remainder - 6
        six += 1
    while(remainder>=3):
        remainder -= 3
        three += 1
    while(remainder>=1):
        remainder -= 1
        one += 1
    return (six,three,one)


def main():

    parser = argparse.ArgumentParser()
    parser.add_argument('inPath', help='the path to the assembly file you want to parse')
    parser.add_argument('-d', '--dummy', action='store_true', help='use this flag if you would like the parser to insert dummy instructions to even out power consumption of code blocks')
    
    args = vars(parser.parse_args())
    print(args['inPath'])

    inPath = sys.argv[1]
    output, blockPowers, maxPower = parseAssembly(inPath)
    if args['dummy']:
        output = addDummyInstructions(output, blockPowers, maxPower)

    splitPath = os.path.splitext(inPath)
    outPath = f'{splitPath[0]}_parsed{splitPath[1]}'

    with open(outPath, 'w') as outFile:
        for line in output:
            outFile.write(line)
       	    

if __name__ == "__main__":
    main()