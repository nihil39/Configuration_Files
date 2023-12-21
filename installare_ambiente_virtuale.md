## Come installare un ambiente virtuale python su Linux
1. `python -m venv envname` per creare l'ambiente virtuale di nome `envname`. L'ambiente virtuale ha tutti i pacchetti seprati da quelli di sistema. 
2. `source envname/bin/activate` per attivare l'ambiente. Controllare a destra o a sinistra nel prompt per vedere se è attivo, dovrebbe apparire `(envname)`, in alcune shell appare `via envname`
3. `pip install --upgrade pip` per aggiornare pip, di solito serve, ma comunque non fa male.
4. `pip install ipykernel matplotlib ipympl nbformat` Pacchetti utili per i notebook che saranno comunque installati
5. `pip install tensorflow`
6. `pip install keras`
7. `python -m pip show nome_pacchetto` dall'interno dell'ambiente virtuale per controllare la versione del pacchetto installato, da chi dipende ed altre informazioni. `nome_pacchetto` è ad esempio `keras`

8. Creare all'interno dell'ambiente virtuale il kernel di ipython con `python -m ipykernel install --user --name=nome_kernel` e selezionarlo poi da Jupyter Lab o da VSCode/VSCodium 

9. `deactivate` per disattivare l'ambiente virtuale

10. `rm -rf /nome_cartella` per cancellare completamente un ambiente virtuale creato

## Rimuovere kernel inutilizzati 
1. `jupyter kernelspec list` per mostare i kernel installati
2. `jupyter kernelspec remove kernel_name` per cancellare un kernel

## Aggiornare tutti i pacchetti installati nell'ambiente virtuale

Opzionale

1. `pip list --outdated` elenco pacchetti non aggiornati
2. `pip install --upgrade pip` aggiornare pip o altro pacchetto x se x al posto di pip
3. `pip3 list -o | cut -f1 -d' ' | tr " " "\n" | awk '{if(NR>=3)print}' | cut -d' ' -f1 | xargs -n1 pip3 install -U` aggiorna tutti i pacchetti non aggiornati, a volte non funziona perche' qualche pacchetto installato richiede versioni non aggiornate di alcune dipendenze, in caso di problemi disinstallare il pacchetto che crea problemi, aggiornare le dipendenze e reinstallarlo. 
