# Websploit — Metasploit Sidekick

**Websploit** is a lightweight, safety-first companion tool for Metasploit, designed for authorized penetration testers, red-teamers, and security researchers. It helps streamline passive reconnaissance and prepare lawful exploitation workflows.

> ⚠️ **Legal Notice:** Use only on systems you own or have explicit written permission. Misuse against unauthorized targets is illegal. Maintainers are not liable for misuse.

---

## Features

* **Passive Reconnaissance:** Gather DNS, HTTP(S) metadata, TLS certificate details, robots.txt, sitemap.xml, and more.
* **Safe Handoff to Metasploit:** Generate sanitized resource files and exports for in-scope engagements.
* **Report Exports:** JSON, CSV, and human-readable formats.
* **Sandbox Mode:** Test safely against lab VMs.

> All features are passive or low-impact. Active scanning requires explicit enabling and authorization.

---

## Installation

Recommended to run inside an isolated VM or container (Kali, Parrot, Ubuntu LTS):

```bash
git clone https://github.com/your-org/websploit.git
cd websploit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

## Supported Platforms

| OS / Environment    | Recommended Execution Environment |
| ------------------- | --------------------------------- |
| Kali Linux          | VM or dedicated test workstation  |
| Parrot Security OS  | VM                                |
| Ubuntu LTS (22.04+) | VM or container                   |
| Debian              | VM or container                   |
| CentOS / RHEL       | Docker container or VM            |
| Windows (WSL2)      | WSL2 with Ubuntu or Linux distro  |
| macOS               | VM or container                   |
| Android (Termux)    | Termux (limited use)              |

---

## Docker Image (Coming Soon)

* Minimal base image with Python and pinned dependencies.
* Non-root user for safe execution.
* Optional network modes for isolated testing.

---

## Usage Example

```bash
python websploit.py --target in-scope.lab --mode passive --export json
python websploit.py --target in-scope.lab --generate-msf
```

---

## Donations / Support

Support development via:

[![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.com/paypalme/Deadshot0x7)
**PayPal:** [https://paypal.me/deadshot0x7](https://paypal.me/deadshot0x7)
**UPI ID (India):** `Sviquarahmed@okxis`

---

## License

MIT License. Contributors must ensure lawful and ethical use.

---

## Disclaimer

For educational and authorized security testing only. Obtain written permission before testing any third-party systems.
