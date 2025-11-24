# Scripts PowerShell pour Technicien Support IT

Ce dépôt contient une collection de **scripts PowerShell simples et utiles** pour un technicien support / helpdesk.  
Ils couvrent des tâches courantes : diagnostic, audit d’un poste, réseau, Active Directory, maintenance.

Chaque script est documenté pour être compréhensible et réutilisable facilement.

---

# 📂 Scripts inclus
```
powershell-it-support-scripts/
│
├── system-info.ps1
├── network-test.ps1
├── disk-cleanup.ps1
├── ad-reset-password.ps1
└── get-installed-programs.ps1
```

---

# 🎯 Objectifs

- Automatiser les vérifications courantes.
- Faciliter le diagnostic utilisateur.
- Gagner du temps lors du support L1/L2.
- Montrer une capacité à utiliser PowerShell en environnement professionnel.

---

# 🔧 Scripts détaillés

### 1️⃣ system-info.ps1  
Affiche les informations essentielles d’un poste :
- version de Windows  
- hostname  
- uptime  
- adresse IP  
- utilisateur connecté  
- état du pare-feu  

### 2️⃣ network-test.ps1  
Effectue un diagnostic réseau rapide :
- ping d’un site  
- test du port 443  
- test DNS  
- affichage de la passerelle  
- IP locale

### 3️⃣ disk-cleanup.ps1  
Nettoie les fichiers temporaires Windows :
- `%temp%`  
- `C:\Windows\Temp`  
- Vidage du cache  
→ sudo-friendly

### 4️⃣ ad-reset-password.ps1  
Réinitialise un mot de passe Active Directory (version simple et propre).

### 5️⃣ get-installed-programs.ps1  
Liste les programmes installés pour aider au diagnostic.

---

# 👨‍💻 Auteur

Erti — technicien en informatique en reconversion  
GitHub : https://github.com/erti-it-tech
