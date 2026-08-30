# Audio foundation

Stato: prima integrazione funzionante per Level 0.

L'audio è presentazione locale. Non decide lo stato autoritativo del mondo e non introduce dipendenze dal networking. Nel Level 0 i passi vengono riprodotti soltanto dal `Player` di cui il client ha autorità, in coerenza con l'Isolation Effect.

## Bus

`res://default_bus_layout.tres` definisce:

- `Master`;
- `Ambience` per i loop del livello;
- `SFX` per passi, torcia, porte e interazioni;
- `UI` per l'interfaccia;
- `Music`, predisposto ma non usato nel Level 0.

## Comportamento corrente

- `res://scenes/levels/level_0.tscn` avvia automaticamente due strati non direzionali: room tone dell'ufficio e ballast fluorescente.
- `res://scripts/audio/level_0_audio.gd` riavvia i due OGG al termine, senza dipendere da metadata `.import` versionati. Il room tone resta non direzionale; ogni `OmniLight3D` reale dei settori riceve invece un ronzio 3D con attenuazione e distanza massima di `8 m`.
- `res://scripts/audio/player_audio.gd` genera passi sulla moquette in base alla distanza realmente percorsa. Camminata e sprint hanno cadenze diverse; ogni passo varia clip, volume e pitch. Salto e atterraggio usano un player separato, con l'atterraggio modulato dalla velocità verticale.
- Il click della torcia è locale e usa tre varianti casuali.
- `res://scenes/props/level_0/push_door.tscn` contiene apertura e chiusura 3D. Il suono parte da `_apply_state()`, lo stesso punto in cui viene applicato lo stato della porta, non direttamente dall'input del giocatore. Le due registrazioni sono state accorciate al `50%` della durata preservandone il pitch.

Gli eventi lontani, i click UI e le altre registrazioni curate restano disponibili in `res://assets/audio/level_0/`, ma non vengono riprodotti casualmente finché non esiste una regola di posizionamento o di tensione approvata.

## Validazione

Con Godot 4.5 stable:

```bash
godot --headless --path . --script res://tools/audit_audio_system.gd
```

L'audit verifica bus, autoplay degli ambienti, ronzii 3D associati alle luci, riproduzione locale di passi/salto/atterraggio/torcia, durata delle porte e audio 3D applicato al loro stato.
