
def invoer() :
    content = open("bestand1.txt", "r")
    vara = input("voeg een film toe: ")

    is_duplicaat = content.read().find(vara)
    if is_duplicaat >= 0:
        print("deze film staat al in je lijst!")
        print(":::::::::::::")    
        return

    file = open("bestand1.txt", "a")
    file.write("-" + vara + "\n")
    file.close
    print(vara + " toegevoegd")
    print(":::::::::::::")


print("welkom bij jouw favoriete filmlijst")
print(":::::::::::::::::")


meer = True
while meer == True: 
    invoer()
    
    nog_een_keer = input("wil je nog een film toevoegen? type 'nee' om te stoppen, klik enter om door te gaan ")
    
    if nog_een_keer == 'nee':
        meer = False



