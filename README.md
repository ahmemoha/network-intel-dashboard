# Cortex 👁️ Web Based OSINT Dashboard

Cortex is a powerful, single-page web application designed for security analysts, penetration testers, and IT professionals. It aggregates data from multiple security APIs into a centralized, dark-mode dashboard for rapid reconnaissance and threat intelligence gathering.

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

### Prerequisites
- A modern Web Browser (Chrome, Firefox, Edge, Brave)
- **API Keys** (Free tiers available):
  - VirusTotal API
  - Shodan API
  - AbuseIPDB API

### Installation & Run

1. **Clone the repository**
   ```bash
   git clone [https://github.com/yourusername/cortex-dashboard.git](https://github.com/yourusername/cortex-dashboard.git)
   cd cortex-dashboard
2. **Run Locally** Simply double-click index.html to open it in your browser. No local server (Node/Python) is required.

3. **Configure:**
- Open the **Settings** tab within the dashboard

- Enter your API keys

- Click **Save Keys**

## 📂  Project Structure
```bash
cortex-dashboard/
├── .gitignore       # Ignored files (system logs, keys)
├── LICENSE          # MIT License
├── README.md        # Documentation
├── index.html       # Main Application
└── screenshots/     # Images for the README
    └── preview.png
```

### 🌐  Deployment (GitHub Pages)
Since Cortex is a client-side application, you can host it for free on GitHub Pages:

1. Rename the main file to `index.html`

2. Push the code to a GitHub repository

3. Go to **Settings > Pages**

4. Select Source: **Deploy from a branch**

5. Select **main branch** and **/ (root)** folder

6. Click Save

Your tool will be live at `https://yourusername.github.io/cortex-dashboard/`

### ⚠️ Security & Privacy Warning
- **Client-Side Exposure:** This tool is designed for local use or private authorized use.

- **API Key Safety:** Because requests are made directly from the browser, your API keys are visible in the "Network" tab of your browser's Developer Tools during a scan.

- **Public Hosting:** If you host this on a public URL, ensure you trust the users. While keys are stored in their browser (`localStorage`), a malicious user could potentially inspect the code.

- **Data Privacy:** Your scan history stays in your browser's memory and is not sent to any backend server managed by Cortex.

### 📜 Disclaimer
**Authorized Use Only:** This application is a reconnaissance tool designed for security professionals and researchers. The user is solely responsible for ensuring they have authorization to scan the targets they input. The creator assumes no liability for misuse or unauthorized scanning activities.

### 📄 License
This project is licensed under the MIT License.
