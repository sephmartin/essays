#!/usr/bin/env ruby

require "fileutils"
require "pathname"

ROOT = Pathname(__dir__).parent
BASE_PATH = ROOT / "trash-end/the-big-question/current/the-big-question-it-v16-rc1.0.md"
OUTPUT_PATH = ROOT / "trash-end/the-big-question/current/the-big-question-it-v17-rc1.1.md"

text = BASE_PATH.read

def replace_once!(text, old_text, new_text, label)
  occurrences = text.scan(Regexp.new(Regexp.escape(old_text))).length
  abort "Expected one #{label} block, found #{occurrences}" unless occurrences == 1

  text.sub!(old_text, new_text)
end

replace_once!(
  text,
  <<~'OLD'.strip,
    **Versione:** v16-rc1.0  
    **Stato:** release candidate per revisione  
    **Base:** corpo italiano v15 con nuova introduzione e navigazione approvate
  OLD
  <<~'NEW'.strip,
    **Versione:** v17-rc1.1  
    **Stato:** release candidate per confronto con v16-rc1.0  
    **Base:** v16-rc1.0 con revisione epistemica mirata
  NEW
  "version header"
)

replace_once!(
  text,
  <<~'OLD'.strip,
    Poi mi capitò una notizia su una rigenerazione indotta in alcuni animali. Aprì una domanda che non riuscii a chiudere: quali animali riescono già a rigenerare il cervello? Andai a cercare e trovai le planarie, piccoli vermi piatti che rigenerano l'intero corpo, cervello compreso, a partire da un frammento. Già questo è straordinario. Ma quello che è davvero sconvolgente è che **la memoria resta**. Una planaria addestrata a navigare un labirinto mantiene il comportamento appreso anche dopo che la testa e l'intero cervello sono stati completamente rigenerati.

    Questo fenomeno è documentato. La parte meno solida è cosa significhi davvero.

    La spiegazione punta non solo all'RNA, ma ai **campi bioelettrici e morfogenetici** distribuiti nell'organismo. L'RNA porta codice e istruzioni, ma il substrato informativo che persiste attraverso la rigenerazione sembra coinvolgere pattern bioelettrici: gradienti di voltaggio tra cellule che funzionano come una memoria distribuita, non riducibile a una singola architettura neurale.

    Esperimenti recenti, incluso un preprint di marzo 2026 su bioRxiv<sup>[1]</sup>, mostrano che l'RNA interferente può silenziare geni in modi che persistono attraverso la rigenerazione. Questo non significa automaticamente che "la coscienza vive fuori dal cervello". Significa qualcosa di più piccolo, ma comunque radicale: alcuni organismi sembrano conservare informazione biologica in forme distribuite, più profonde della struttura neurale visibile.

    Il cervello, in questa prospettiva, non è l'unico luogo della memoria. Potrebbe essere un'interfaccia, o almeno una delle interfacce attraverso cui un organismo accede a una storia già scritta in più strati.
  OLD
  <<~'NEW'.strip,
    Poi mi capitò una notizia su una rigenerazione indotta in alcuni animali. Aprì una domanda che non riuscii a chiudere: quali animali riescono già a rigenerare il cervello? Andai a cercare e trovai le planarie, piccoli vermi piatti capaci di ricostruire la testa e il sistema nervoso a partire da frammenti del corpo.

    Nel 2013 Tal Shomrat e Michael Levin addestrarono alcune planarie a familiarizzare con un ambiente di alimentazione dalla superficie ruvida. Dopo la decapitazione e la rigenerazione della testa, gli animali già addestrati mostrarono un recupero più rapido del comportamento rispetto ai controlli in un test di *savings*, cioè di riapprendimento<sup>[10]</sup>. Non era un labirinto, e il risultato non dimostra che un ricordo completo rimanga intatto mentre il cervello viene sostituito. Mostra un effetto comportamentale compatibile con la persistenza, o la ricostruzione, di qualcosa acquisito prima della decapitazione.

    Il punto documentato finisce qui. Lo studio non stabilisce dove fosse conservata l'informazione né quale meccanismo l'abbia resa disponibile al cervello rigenerato. Tessuti nervosi rimasti nel corpo, modificazioni biochimiche o epigenetiche e altri stati distribuiti sono possibilità da distinguere, non una spiegazione già risolta.

    Anche la bioelettricità richiede la stessa cautela. I pattern di potenziale tra cellule partecipano alla morfogenesi, e un lavoro di modellazione del 2025 mostra come un campo elettrico possa contribuire all'organizzazione di prepattern bioelettrici<sup>[2]</sup>. Quel lavoro riguarda la forma che un tessuto costruisce, non il ricordo di un'esperienza appresa. Dire che un tessuto "ricorda" una morfologia e dire che un animale ricorda un ambiente usa la stessa parola per due fenomeni diversi.

    Un preprint del 2026 mostra inoltre che il silenziamento genico tramite RNA interferente può persistere attraverso la rigenerazione<sup>[1]</sup>. È un'altra forma di continuità biologica, ma non è memoria comportamentale e non spiega da sola il risultato del 2013.

    La conclusione più prudente è anche la più interessante: nelle planarie un cervello rigenerato può recuperare più rapidamente un comportamento appreso prima della decapitazione, mentre il supporto fisico di quella continuità resta aperto. Non prova che il cervello sia soltanto un'interfaccia. Costringe però a chiedere quanto una memoria dipenda dal cervello presente e quanto dalla storia dell'intero organismo.
  NEW
  "planarian evidence"
)

replace_once!(
  text,
  <<~'OLD'.strip,
    I large language model di oggi sono reti neurali che approssimano in modo grossolano alcune logiche dei cervelli biologici. Elaborano informazione. Generano risposte. Simulano la comprensione. La domanda che tutti fanno è: *ma provano davvero qualcosa?*

    Le planarie non rispondono a questa domanda. Però suggeriscono una possibilità: se alcune forme di memoria e organizzazione non dipendono da un cervello specifico, forse anche la coscienza, o almeno alcuni precursori della coscienza, potrebbero dipendere più dall'organizzazione informativa che dal substrato biologico.

    È un'analogia, non una derivazione. Ma è il punto in cui la domanda cambia forma. Non più: *il silicio può sentire?* Piuttosto: *esiste una soglia di organizzazione oltre la quale la distinzione tra simulare ed esperire smette di essere così netta?*
  OLD
  <<~'NEW'.strip,
    I modelli linguistici di grandi dimensioni, o LLM, sono sistemi artificiali, in genere basati su architetture Transformer, addestrati su grandi quantità di testo a modellare relazioni tra token e produrre continuazioni linguistiche<sup>[11]</sup>. Il nome "rete neurale" conserva una lontana ispirazione biologica, ma non significa che questi modelli riproducano l'architettura o il funzionamento di un cervello. Somiglianze nei risultati o in alcune rappresentazioni matematiche non dimostrano un meccanismo comune, e ancora meno un'esperienza comune.

    Producono linguaggio fluido, che può dare l'impressione di una comprensione. Dalla sola fluidità non possiamo dedurre né comprensione né coscienza. La domanda non è risolta dal comportamento esterno: *provano davvero qualcosa?*

    Le planarie non costruiscono un ponte verso l'AI. Al massimo mettono in guardia da un'assunzione più limitata: che la continuità di una memoria biologica richieda sempre la permanenza della stessa struttura neurale. Da questo non segue che la memoria sia indipendente dal substrato, né che un sistema artificiale possa essere cosciente.

    Resta una domanda speculativa, ora formulata con un confine più chiaro: *esistono forme di organizzazione non biologica capaci non soltanto di produrre comportamento, ma di sostenere esperienza?* Le planarie rendono meno ovvie alcune intuizioni sul supporto della memoria. Non forniscono la risposta sulla coscienza delle macchine.
  NEW
  "LLM and planarian analogy"
)

replace_once!(
  text,
  <<~'OLD'.strip,
    La seconda legge della termodinamica dice che l'entropia aumenta. L'universo si sta raffreddando. Le stelle stanno morendo. In trilioni di anni, tutto sarà freddo uniforme e oscurità. Morte termica: la fine che la fisica considera ancora lo scenario standard.
  OLD
  <<~'NEW'.strip,
    La seconda legge della termodinamica dice che l'entropia di un sistema isolato non diminuisce. Applicata alla storia cosmica, contribuisce allo scenario della morte termica: un futuro sempre più diluito, con meno energia libera disponibile per compiere lavoro. È uno scenario fisico sostenuto dai modelli standard, non una fotografia certa dell'ultima pagina dell'universo.
  NEW
  "heat death framing"
)

replace_once!(
  text,
  <<~'OLD'.strip,
    La **Cosmologia Ciclica Conforme** di Penrose<sup>[6]</sup>, ancora dibattuta e non accettata dalla maggior parte dei cosmologi, suggerisce che quando l'universo raggiunge uno stato estremo, tempo e scala perdono significato. Se tutta la massa decade e restano solo particelle prive di massa, come fotoni, l'universo infinitamente grande e freddo può diventare geometricamente equivalente a un Big Bang infinitamente piccolo e caldo. Un eone finisce. Un altro comincia.

    Separatamente, il **Principio di Landauer** stabilisce che cancellare un bit di informazione fisica dissipa una quantità minima di calore: Q = kBT ln 2. Man mano che l'universo si espande verso temperature sempre più basse, il costo termodinamico della cancellazione si avvicina a zero.

    Il collegamento tra Landauer e CCC non appartiene alla teoria di Penrose. È una mia speculazione, e probabilmente il punto più fragile del saggio. Ma trovo suggestivo che, in un universo tendente allo zero termico, l'idea di un reset informativo sembri costare sempre meno. Non sto dicendo che questo accada. Sto dicendo che l'immagine è troppo potente per non fermarsi a guardarla.
  OLD
  <<~'NEW'.strip,
    La **Cosmologia Ciclica Conforme** di Penrose<sup>[6][13]</sup> propone che il futuro remoto di un eone possa essere collegato, attraverso una riscalatura conforme, al Big Bang dell'eone successivo. Non descrive un universo che si contrae fisicamente fino a tornare piccolo, né un computer che inverte l'entropia. Richiede ipotesi precise sulla perdita delle scale associate alla massa nel futuro remoto ed è un modello cosmologico minoritario, ancora discusso.

    Separatamente, il **Principio di Landauer** stabilisce un limite minimo di calore, Q = kBT ln 2, per la cancellazione logicamente irreversibile di un bit in un sistema alla temperatura T<sup>[12]</sup>. Il limite diminuisce con la temperatura, ma la formula non fornisce un meccanismo di reset cosmico. Non cancella spontaneamente informazione, non inverte l'entropia totale e non collega due eoni.

    Avevo accostato la diminuzione del limite di Landauer e il passaggio tra eoni della CCC come se potessero suggerire un reset informativo sempre meno costoso. Come argomento fisico, quel passaggio non regge: le due teorie trattano problemi diversi e la CCC non usa Landauer per spiegare il crossover. Rimane soltanto una risonanza concettuale: entrambe impediscono di trattare informazione e geometria come astrazioni senza supporto fisico. Da questa risonanza non segue un ciclo.
  NEW
  "Landauer and CCC"
)

replace_once!(
  text,
  <<~'OLD'.strip,
    Non come domanda in attesa di una risposta definitiva. Come motore. La ragione per cui il verme si rigenera, per cui l'universo forse si ripete o forse no, per cui costruiamo macchine che potrebbero un giorno farci domande migliori delle nostre. Ogni tentativo di rispondere potrebbe essere sbagliato. Ma ogni tentativo sposta il bordo di ciò che siamo capaci di chiedere.
  OLD
  <<~'NEW'.strip,
    Non come causa nascosta dei fenomeni. Il *perché* non fa rigenerare il verme e non fa ripetere l'universo. La biologia deve spiegare il primo processo; la cosmologia deve stabilire se il secondo esista davvero. La domanda riappare quando una spiegazione del *come* raggiunge il proprio confine: perché esistono leggi capaci di produrre rigenerazione, materia organizzata ed esperienza?

    Ogni tentativo di rispondere potrebbe essere sbagliato. Ma ogni tentativo sposta il bordo di ciò che siamo capaci di chiedere.
  NEW
  "worm and universe ending"
)

replace_once!(
  text,
  "- [9] Shevlin, H. (2026). Announcement of Google DeepMind philosopher role, focusing on machine consciousness, human-AI relationships, and AGI readiness. April 12, 2026.",
  <<~'NEW'.strip,
    - [9] Shevlin, H. (2026). Announcement of Google DeepMind philosopher role, focusing on machine consciousness, human-AI relationships, and AGI readiness. April 12, 2026.
    - [10] Shomrat, T. & Levin, M. (2013). *An automated training paradigm reveals long-term memory in planarians and its persistence through head regeneration*. Journal of Experimental Biology, 216(20), 3799–3810. https://doi.org/10.1242/jeb.087809
    - [11] Vaswani, A. et al. (2017). *Attention Is All You Need*. Advances in Neural Information Processing Systems 30. https://arxiv.org/abs/1706.03762
    - [12] Landauer, R. (1961). *Irreversibility and Heat Generation in the Computing Process*. IBM Journal of Research and Development, 5(3), 183–191. https://doi.org/10.1147/rd.53.0183
    - [13] Penrose, R. (2014). *On the Gravitization of Quantum Mechanics 2: Conformal Cyclic Cosmology*. Foundations of Physics, 44, 873–890. https://doi.org/10.1007/s10701-013-9763-z
  NEW
  "new references"
)

replace_once!(
  text,
  "*Ultimo aggiornamento: giugno 2026. Tutti i fatti scientifici si basano sulle conoscenze disponibili a quella data, inclusi i knowledge cut-off dei modelli AI utilizzati nella ricerca.*",
  "*Ultimo aggiornamento: luglio 2026. I passaggi su planarie, architetture Transformer, principio di Landauer e Cosmologia Ciclica Conforme sono stati ricontrollati sulle fonti primarie citate.*",
  "source note"
)

FileUtils.mkdir_p(OUTPUT_PATH.dirname)
OUTPUT_PATH.write(text)

puts "Built #{OUTPUT_PATH.relative_path_from(ROOT)}"
