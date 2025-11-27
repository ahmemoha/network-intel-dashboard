# Network Intel  👁️ Web Based OSINT Dashboard

This dashboard is a powerful, single-page web application designed for security analysts, penetration testers, and IT professionals. 
It aggregates data from multiple security APIs into a centralized, dark-mode dashboard for rapid reconnaissance and threat intelligence gathering.

<img width="1911" height="1027" alt="dd" src="https://github.com/user-attachments/assets/e1bdd62a-6601-4719-90b7-d0c71d1e8e84" />

## ✨ Features

### 🕵️‍♂️ Target Reconnaissance
- **Smart Lookup**: Automatically distinguishes between Domains and IP addresses to route queries correctly
- **DNS Enumeration**: Deep-dives into DNS records (A, MX, TXT, CNAME) using Google's DNS-over-HTTPS
- **Asset Discovery**: Uncovers hidden subdomains to map the full external attack surface
- **WHOIS/RDAP**: Retrieves registration data, intelligently stripping www prefixes for accurate registrar queries

### 🛡️ Threat Intelligence
- **Multi-Source Aggregation**: Interfaces simultaneously with VirusTotal, Shodan, and AbuseIPDB
- **Reputation Scoring**: Real-time fetching of "Malicious" vs "Harmless" scores to assess immediate risk
- **Host Profiling**: Identifies open ports, operating systems, and ISP information for target IPs
- **Abuse Confidence**: Displays intuitive percentage-based confidence scores for potential abuse sources

### 🕸️ Visualization & Interface
- **Force-Directed Graph**: Renders interactive network topologies linking Domains, IPs, and Subdomains using `vis.js`
- **Responsive Dark Mode**: Professional, low-strain UI built with Tailwind CSS for prolonged analysis sessions
- **Asynchronous Grid**: Non-blocking card layout that populates individual data streams as they arrive
- **State Persistence**: API keys are saved locally in the browser, persisting between page reloads

## 🚀 Quick Start

### Installation & Run (2 options)
## Prerequisites (Option 1)
- A modern Web Browser (Chrome, Firefox, Edge, Brave)
- **API Keys** (Free tiers available):
  - VirusTotal API
  - Shodan API
  - AbuseIPDB API
    
1. **Clone the repository**
   ```bash
   git clone https://github.com/ahmemoha/network-intel-dashboard.git
   cd network-intel-dashboard
2. **Run Locally** Simply double-click index.html to open it in your browser. No local server (Node/Python) is required. 

## Prerequisites (Option 2)
- `make` command available on your system
- Python 3.x installed
- Modern web browser

1. **Clone the repository**
   ```bash
   git clone https://github.com/ahmemoha/network-intel-dashboard.git
   cd network-intel-dashboard
   
2. **Serve the application** (Recommended)
   ```bash
   make serve
   ```
4. **Access the dashboard**
Open your browser to `http://localhost:8000/network-intel-dashboard.html`

5. **Stop the Server:** When you are done, return to the terminal window and press `Ctrl+C`

### Alternative Methods
**Manual Run (No Makefile):**

```bash
python3 -m http.server 8000
```
**Direct File Access:**
```bash
make open
```

After Option 1 or 2:

**Configure:**
- Open the **Settings** tab within the dashboard

- Enter your API keys

- Click **Save Keys**
  
<img width="1918" height="1012" alt="ga" src="https://github.com/user-attachments/assets/f7ab89fd-fad7-4b6c-b364-997a7c03f75f" />

## 📂  Project Structure
```bash
network-intel-dashboard/
├── .gitignore       # Ignored files (system logs, keys)
├── LICENSE          # MIT License
├── Makefile         # Command-line utility for running the dashboard
├── README.md        # Documentation
└── index.html       # Main Application

```

### 🌐  Deployment (GitHub Pages)
Since the dashboard is a client-side application, you can host it for free on GitHub Pages:

1. Rename the main file to `index.html`

2. Push the code to a GitHub repository

3. Go to **Settings > Pages**

4. Select Source: **Deploy from a branch**

5. Select **main branch** and **/ (root)** folder

6. Click Save

Your tool will be live at `https://ahmemoha.github.io/network-intel-dashboard/`

### ⚠️ Security & Privacy Warning
- **Client-Side Exposure:** This tool is designed for local use or private authorized use.

- **API Key Safety:** Because requests are made directly from the browser, your API keys are visible in the "Network" tab of your browser's Developer Tools during a scan.

- **Public Hosting:** If you host this on a public URL, ensure you trust the users. While keys are stored in their browser (`localStorage`), a malicious user could potentially inspect the code.

- **Data Privacy:** Your scan history stays in your browser's memory and is not sent to any backend server managed by Intel Dashboard.

### 📜 Disclaimer
**Authorized Use Only:** This application is a reconnaissance tool designed for security professionals and researchers. The user is solely responsible for ensuring they have authorization to scan the targets they input. The creator assumes no liability for misuse or unauthorized scanning activities.

### 📄 License
This project is licensed under the MIT License.
