def readFile(nameOfFile):
    with open(nameOfFile, 'r', encoding='utf-8') as f:
        lines = f.read().splitlines()
    return lines

if __name__ == '__main__':
    inputLines = readFile('libs_list.txt')
    result = {}
    nameOfservice = {}
    library = {}
    i=0
    j = 0

    while i < inputLines.__len__():
        nameOfservice[j] = inputLines[i]
        library[j] = inputLines[i+1]
        j+=1
        i+=2

    for i in range(j):
        if result.get(nameOfservice[i]) == None:
            result[nameOfservice[i]] = library[i]
        else:
            result[nameOfservice[i]] = result[nameOfservice[i]] + ', ' + library[i]

    for i in result:
        print(i + ": " + result.get(i))