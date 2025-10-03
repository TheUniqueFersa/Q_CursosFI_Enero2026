import sys
var = 0

def buscar(texto):   
    linea = 0
    for word in texto:
        linea +=1
        palabras = word.split()     #metodo split empleado para dividir una cadena 
        
        if("ORG" in palabras[0]):   
            
            dirMemoria = palabras[1]
            dirMemoria = dirMemoria.lstrip("$")    #metodo lstrip empleado para crear una copia de la cadena eliminando los caracteres inciales 
            return dirMemoria
    else:
        return False

def cargar():
    diccionarioMnemonicos = {}
    with open("Lista.csv") as f:    #se abre archivo de excel con los mnemonicos 
        lineas = f.readlines()      #metodo readline empleado para hacer la lectura linea a linea 
        for i in range (1, len(lineas)):
            l = lineas[i].upper()    #metodo upper empleado para las mayusculas 
            registro = l.split(",")
            diccionarioMnemonicos[registro[0]] = [[registro[1], registro[2], registro[3]], [registro[4], registro[5], registro[6]],[registro[7],registro[8], registro[9]],[registro[10],registro[11], registro[12]],[registro[13],registro[14], registro[15]],[registro[16],registro[17], registro[18]],[registro[19],registro[20], registro[21]]]
    
    return diccionarioMnemonicos

def hexadec(val, nbits):
    return hex((val + (1 << nbits)) % (1 << nbits))

def noHexadec(operando):
    noHexa = ["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "X", "Y", "Z","g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"]
    palabra = [char for char in operando]
    for i in range (len(palabra)):
        
        if palabra[i] in noHexa:            
            return True
            break
    return False

def cronometro(diccionario, cifras, ciclos, datos, var):
    value = datos[var]
    if datos[var] not in diccionario.values():
        value = int(datos[var]) + ciclos
        datos[var] = str(value)
        
    elif datos[var] in diccionario.values():   #metodo values (diccionarios del lenguaje)
        
        for key, valor in diccionario.items(): #metodo items (diccionarios del lenguaje)
            if datos[var] == valor:
                value = int(key) + ciclos
    if 9 < value < 16:
        
        datos[var] = diccionario[str(value)]
    elif value > 15:
       
        datos[var] = str(value - 16) 
        cronometro(diccionario, cifras, 1, datos, var-1)
    return datos


def contador(dirMemoria, ciclos, codigoObjeto, mnem, op, pos):
    
    espacio = False
    cifras = len(dirMemoria)
    posicion = cifras-1
    datos = [x for x in dirMemoria]
    
    value = 0
    ultimoDigito = cifras
    digitoActual = cifras
    resultado = ""
    direccion = datos[posicion]
    division_mnem = False
    division_op = False
    var = cifras-1
    
    if len(mnem) % 2 ==0:
        pos = pos + len(mnem)
    else:
        pos = pos + len(mnem)-1

    if len(mnem) <= 3:
        mnem = mnem.replace(" ", "")
        
    if len(mnem) > 2 and pos > 32:
        codigoObjeto = codigoObjeto + "\cf1" + mnem.split()[0] + "\cf0"
        espacio = True
        division_mnem = True
        pos = 2

    elif len(mnem) <= 2 and pos > 32:
        espacio = True
        division_mnem = True
        pos = 0

    elif pos == 32:
        codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0"
        espacio = True
        pos = 0
        division_mnem = True
        
    if len(op) != 0:
        if len(op) % 2 == 0:
            pos = pos + len(op)
        else:
            pos = pos + len(op)-1
        

    if len(op) > 2 and pos > 32 and not espacio:
        codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0" + "\cf2" + op.split()[0] + "\cf0"
        espacio = True
        division_op = True
        
        pos = 2
    elif len(op) <=2 and pos > 32 and not espacio:
        espacio = True
        division_op = True
        pos = 2
        
    elif pos == 32 and not espacio:
        codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0" + "\cf2" + op + "\cf0"
        espacio = True
        pos = 0
        

    elif division_mnem == False and division_op == False and not espacio:
        if len(op) != 0:
            codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0" + "\cf2" + op.strip() + "\cf0"
        else:
            codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0"

    hexa = {"10": "A", "11": "B", "12":"C", "13":"D", "14":"E", "15":"F"}

    datos = cronometro(hexa, cifras, ciclos, datos, var)

    for dato in datos:
        resultado = resultado + str(dato)
    if espacio:
        codigoObjeto = codigoObjeto + "\n\\par" + "<"
        
        for i in range(len(datos)-1):
            codigoObjeto = codigoObjeto + datos[i]
        codigoObjeto = codigoObjeto + "0" + "> "
        if division_mnem:
            if len(mnem) > 2 and pos != len(op):
                codigoObjeto = codigoObjeto + "\cf1" + mnem.split()[1] + "\cf0" + "\cf2" + op.strip() + "\cf0"
            elif pos == len(op) and len(op) % 2 == 0:
                codigoObjeto = codigoObjeto + "\cf2" + op.strip() + "\cf0"
            elif pos == len(op)-1:
                codigoObjeto = codigoObjeto + "\cf2" + op.strip() + "\cf0"
            else:
                
                codigoObjeto = codigoObjeto + "\cf1" + mnem + "\cf0" + "\cf2" + op.strip() + "\cf0"
        elif division_op:
            if len(op) > 2:
                codigoObjeto = codigoObjeto + "\cf2" + op.split()[1] + "\cf0" 
            else:
                codigoObjeto = codigoObjeto + "\cf2" + op.strip() + "\cf0"
    
    return resultado, codigoObjeto, pos

mnemonicos = cargar()     
Error = False
dirMemoria = 0
#primera_orden = True
direccion_hexa = ""
Directivas = ["VACIO", "ORG", "EQU", "FCB"]
pos = 0
pos_relativa = 0
#bloque de codigo que lanza excepciones en caso de que algo salga mal con el archivo ingresado
try:      
    archivo = "CodigoPrueba.asc"     #se escribe el nombre del archivo a leer 
    modelo = archivo.split(".")[0]
    formato = archivo.split(".")[1]
except IndexError:         #excepcion
    print("FALTA NOMBRE DEL ARCHIVO, Ingresa el nombre")  #arroja mensaje 
    exit()
if formato != "asc":     #sentencia if para verificar el formato requerido 
    print("EL ARCHIVO NO TIENE FORMATO ASC")       #mensaje 
    exit()
try:
    g = open(archivo, 'r')
    renglon = ""
    comentario = {}
    mensajedeg = ""
    listaComentarios = ""
    j = 0
    contLinea = 0
    for line in g:
        line = line.rstrip()
        if len(line) == 0:
            line = " VACIO"
        if "*" in line:
            line = line.replace("*", "+",1)
        renglon = line.split("+")
        if len(renglon[0].rstrip()) == 0:
            renglon[0] = " VACIO"
        line = renglon[0]
        if len(renglon) > 1:
            comentario[j] = "*" + renglon[1] 
        j += 1
        line = line.rstrip()
        mensajedeg = mensajedeg + line + "\n"
    g.close()
except FileNotFoundError:     # escepcion 
    print("¡No se encontro el archivo!")
    exit()

texto=mensajedeg.splitlines()


if not "END" in mensajedeg:
    print("¡No existe END en el texto!")
    Error = True

parte = 0
if buscar(texto) != False:
    dirMemoria = buscar(texto)
elif buscar(texto) == False:
    print("¡No existe ORG en el texto!")
    exit()

codigoObjeto ="<"+dirMemoria+"> "
codigoFuente = ""
variables = {}
etiquetas = {}
direccion_relativa = ""
direccionamientoRelativo = {}

pos = 0


for i in range (len(texto)):
    mnemo = ""
    linea = texto[i]
    
    lineas = linea.split()
    

    if "EQU" in lineas:
        mnemo = "EQU"
        variables[lineas[0]] = lineas[2] 
        ("VALOR LINEAS", variables)

    elif len(lineas) == 1 and lineas[0] not in mnemonicos and lineas[0] not in Directivas and lineas[0] != "END":
        etiquetas[lineas[0]] = dirMemoria
        linea = " VACIO " + linea

    elif len(lineas) >= 1:
        mnemo = lineas[0].upper()
    
    for k in range(len(Directivas)):
        if Directivas[k] in linea:
            if "VACIO" in linea:
                linea = " " + str(i+1) + ":" + linea
                codigoFuente = codigoFuente + " " + linea
                if i in comentario:
                    codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                else:
                    codigoFuente = codigoFuente + "\n"
            else:
                linea = " " + str(i+1) + ": VACIO " + linea
                codigoFuente = codigoFuente + " " + linea

                if i in comentario:
                    codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                else:
                    codigoFuente = codigoFuente + "\n"

    if "END" in linea:
        codigoFuente = codigoFuente + " " + str(i+1) + ": VACIO " + linea
        break

    if "VACIO" in linea:
        continue

    

    if mnemo in mnemonicos:

        if linea.find(" ") != 0:
            print("Falta identacion en linea: ", str(i+1))
            Error = True
    
        if mnemonicos[mnemo][5][0] != "-- ":
        
       
            if len(lineas) == 1:
                    codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + mnemonicos[mnemo][5][0].replace(" ", "") + "): " + mnemo
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][5][2]), codigoObjeto, mnemonicos[mnemo][5][0], "", pos)
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
            else:
                    print("Instruccion si operando en linea: ", i+1)
                    Error = True
        else:

            if len(lineas) == 1:
                print("Instruccion si operando en linea: ", i+1)
                Error = True
                continue
            else:

                operando = lineas[1]

                if ",X" in operando:
                    operando = operando.replace(",X", "")
                elif ",Y" in operando:
                    operando = operando.replace(",Y", "")

                if operando in variables:
                    operando = variables[operando]
            
                if operando in etiquetas:
                    operando = operando
            
                else:

                    if "#" in operando:
                        operando = operando.strip("#")
                        
                        if operando in variables:
                            operando = variables[operando]
                        elif noHexadec(operando) and not "$" in operando and not "'":
                            print("NO SE DECLARO CONSTANTE EN LA LINEA: ", i+1)
                            Error = True
                            continue
                    if not "$" in operando and not "'" in operando and operando:
                        if not noHexadec(operando):
                            if int(len(str(operando))) > 2:
                                operando = hex(int(operando))[2:].zfill(4)
                            else:
                                operando = hex(int(operando))[2:].zfill(2)
                        elif mnemonicos[mnemo][6][0] == "-- ":
                            print("NO SE DECLARO VARIABLE EN LA LINEA: ", i+1)
                            Error = True
                            continue
                    if "'" in operando:
                        if "$" in operando:
                            operando = operando.strip("$").strip("'")
                            operando = ord(operando)
                        else:
                            operando = hex(ord(operando.strip("'")))[2:].zfill(2)
                    if "$" in operando:
                        operando = operando.strip("$")
                        if len(operando) > 2:
                            operando = operando.zfill(4)
                    if len(operando) > 2 and operando not in etiquetas:
                        operando = operando[:2] + " " + operando[2:]

            if("#" in linea):
                # direccionamiento inmediato
                if mnemonicos[mnemo][0][0] != "-- ":
                    codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + (mnemonicos[mnemo][0][0]).replace(" ", "") + operando.replace(" ", "") + "):" + mnemo + " " + lineas[1]
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][0][2]), codigoObjeto, mnemonicos[mnemo][0][0], operando, pos)
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
                else:
                    print("No hay modo de direccionamiento linea: ", i+1)
            elif(",X" in linea):
                if len(operando.replace(",X", "")) > 3:
                    print("MAGNITUD DE OPERANDO ERRONEA EN LINEA: ", i+1)
                    Error = True
                # direccionamiento indexado en x
                elif mnemonicos[mnemo][2][0] != "-- ":
                    codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + mnemonicos[mnemo][2][0].replace(" ", "") + operando.replace(" ", "").replace(",X", "") + "): " + mnemo + " " + lineas[1]
                    operando = operando.replace(",X", "")
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][2][2]), codigoObjeto,mnemonicos[mnemo][2][0], operando, pos)
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
                else:
                    print("No hay modo de direccionamiento en linea: ", i+1)
            elif(",Y" in linea):
                if len(operando.replace(",Y", "")) > 3:
                    print("MAGNITUD DE OPERANDO ERRONEA EN LINEA: ", i+1)
                    Error = True
                # direccionamiento indexado en y
                elif mnemonicos[mnemo][3][0] != "-- ":
                    codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + (mnemonicos[mnemo][3][0]).replace(" ", "") + operando.replace(" ", "").replace(",Y", "") + "): " + mnemo + " " + lineas[1]
                    operando = operando.replace(",Y", "")
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][3][2]), codigoObjeto,mnemonicos[mnemo][3][0], operando, pos)
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
                else:
                    print("No hay modo de direccionamiento en linea: ", i+1)
            elif(len(operando)<3):
                # direccionamiento directo
                if mnemonicos[mnemo][1][0] != "-- ":
                    codigoFuente = codigoFuente + "  " + str(i+1) + ":" + dirMemoria + "(" + (mnemonicos[mnemo][1][0]).replace(" ", "") + operando.replace(" ", "") + "):" + mnemo + " " + lineas[1]
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][1][2]), codigoObjeto, mnemonicos[mnemo][1][0], operando, pos)                    
                    
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
                else:
                    print("No hay modo de direccionamiento linea: ", i+1)
            elif mnemonicos[mnemo][6][0] != "-- ":
                codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + (mnemonicos[mnemo][6][0]) + " " + operando + "):" + mnemo + " " + lineas[1]
                dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][6][2]), codigoObjeto, mnemonicos[mnemo][6][0], "RL", pos)
                direccionamientoRelativo[operando.replace(" ","")] = dirMemoria
                if i in comentario:
                    codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                else:
                    codigoFuente = codigoFuente + "\n"
            else:
                # Direccionamiento extendido
                if mnemonicos[mnemo][4][0] != "-- ":
                    codigoFuente = codigoFuente + "  " + str(i+1) + ": " + dirMemoria + "(" + (mnemonicos[mnemo][4][0]).replace(" ", "") + operando.replace(" ", "") + "):" + mnemo + " " + lineas[1]
                    dirMemoria, codigoObjeto, pos = contador(dirMemoria, int(mnemonicos[mnemo][4][2]), codigoObjeto,mnemonicos[mnemo][4][0], operando, pos)
                    if i in comentario:
                        codigoFuente = codigoFuente + " " + comentario[i] + "\n"
                    else:
                        codigoFuente = codigoFuente + "\n"
                else:
                    print("No hay modo de direccionamiento linea: ", i+1)
    elif mnemo in Directivas:
        continue
    elif mnemo in etiquetas:
        continue
    else:
        print("NO EXISTE EL MNEMONICO ", mnemo, "En linea: ", i)
        Error = True
    
for g in range (len(texto)):
    mnemo = ""
    linea = texto[g]
    lineas = linea.split()
    mnemo = lineas[0].upper()
    resHex = ""
    operando = ""

    if len(lineas)>1:
        operando = lineas[1]

    if len(lineas) >= 1:
        mnemo = lineas[0].upper()

    if mnemo in mnemonicos:
        if mnemonicos[mnemo][6][0] != "-- " and operando not in etiquetas:
            print("NO EXISTE ETIQUETA EN LINEA: ", i+1)
            Error = True
            continue

    if len(lineas) > 1:
        operando = lineas[1]
    if operando in direccionamientoRelativo and len(lineas) > 1:
        if int(direccionamientoRelativo[operando],16) > int(etiquetas[operando],16):
            if str(hex(int(etiquetas[operando],16) - int(direccionamientoRelativo[operando],16))[3:]).isdecimal():
                resHex = -int(hex(int(etiquetas[operando],16) - int(direccionamientoRelativo[operando],16))[3:])
            else:
                resHex = -int(hex(int(etiquetas[operando],16) - int(direccionamientoRelativo[operando],16))[3:],16)
            if int(resHex) < -127:
                Error = True
            else:
                    resHex = hexadec(resHex,8)[2:]
                    codigoFuente = codigoFuente.replace(mnemonicos[mnemo][6][0] + " " + operando, mnemonicos[mnemo][6][0] + resHex)
                    codigoObjeto = codigoObjeto.replace("RL", resHex)
        else:
            resHex = int(hex(int(etiquetas[operando],16) + int(direccionamientoRelativo[operando],16))[3:])
            if resHex > 128:
                Error = True
            else:
                resHex = hexadec(resHex,8)[2:]
                codigoFuente = codigoFuente.replace(mnemonicos[mnemo][6][0] + " " + operando, mnemonicos[mnemo][6][0] + resHex)
                codigoObjeto = codigoObjeto.replace(mnemonicos[mnemo][6][0] + " " + operando, mnemonicos[mnemo][6][0] + resHex)


codigoObjeto = codigoObjeto.replace("\par", "").replace("\cf1", "").replace("\cf2", "").replace("\cf0", " ")


if Error == False:

    print("Se ha compilado el archivo de manera correcta *_* ")
    #se escribe el codigo fuente y el codigo objeto en los archivos creados
    f = open(modelo + ".LST", "w")  #abre el archivo LST
    f.write(codigoFuente)           #escribe el codigo fuente sobre el archivo LST
    f.close()

    g = open(modelo + ".S19", "w")  #abre el archivo S19
    g.write(codigoObjeto)           #escribe el codigo objeto sobre el archivo S19
    g.close()

    


