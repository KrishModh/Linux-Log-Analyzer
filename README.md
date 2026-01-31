# 🔐 Linux Log Analyzer (Bash)

A simple yet practical **Linux security log analyzer** written in **Bash**, designed to detect **failed SSH login attempts**, **invalid users**, and **suspicious IP addresses** from system authentication logs.

This project demonstrates real-world **Linux administration**, **log analysis**, and **basic security monitoring** skills — commonly used in **SOC**, **Blue Team**, and **Cybersecurity fundamentals**.

---

## 🚀 Features

- 📂 Analyzes `/var/log/auth.log`
- 🔑 Detects **failed SSH login attempts**
- 👤 Identifies **invalid user login attempts**
- 🌐 Extracts and counts **suspicious IP addresses**
- 🕒 Generates **timestamped security reports**
- 📄 Saves output to a report file automatically
- ⚡ Lightweight & beginner-friendly Bash script

---

## 🛠️ How It Works

The script:
1. Scans authentication logs for SSH-related failures  
2. Filters only `sshd` events (removes sudo noise)  
3. Extracts IP addresses involved in failed attempts  
4. Counts and sorts repeated login attempts  
5. Generates a clean, timestamped report  

---

## 📌 Requirements

- Linux system (Tested on **Kali Linux**)
- Bash shell
- `sudo` privileges
- SSH service enabled

---

## ▶️ Usage

### 1️⃣ Clone the repository
```bash
git clone git@github.com:KrishModh/Linux-Log-Analyzer.git
cd Linux-Log-Analyzer
```

### 2️⃣ Make the script executable
```bash
chmod +x log_analyzer.sh
```

### 3️⃣ Run the analyzer
```bash
./log_analyzer.sh
```

> The script will ask for sudo permission to read log files.

---

## 📄 Output

- Displays results in the terminal
- Automatically creates a report file like:
```
log_report_2026-01-31_00-31-02.txt
```

The report includes:
- Failed login attempts
- Top suspicious IP addresses
- Invalid user attempts

---

## 📸 Project Preview

![Linux Log Analyzer Output](images/log-analyzer-output.png)

---

## 🧠 Learning Outcomes

- Linux log file analysis
- Bash scripting fundamentals
- SSH security concepts
- Understanding brute-force attack patterns
- Automation using shell scripts

---

## ⚠️ Disclaimer

This project is intended for **educational and defensive security purposes only**.  
Do not use it for unauthorized or illegal activities.

---

## 👨‍💻 Author

**Krish Modh**  
Cybersecurity & Linux Enthusiast  

🔗 LinkedIn: https://www.linkedin.com/in/krish-modh-b38447300/  
🐙 GitHub: https://github.com/KrishModh

---

⭐ If you found this project helpful, consider starring the repository!
