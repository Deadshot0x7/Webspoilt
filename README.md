# Webspoilt

**Webspoilt** is a Python-based reconnaissance and network testing tool designed for cybersecurity professionals and ethical hackers. It facilitates website information gathering, vulnerability assessment, and performance testing in authorized environments.

---

## Key Features

* **Comprehensive Website Reconnaissance** – Gather detailed information about target websites.
* **Stress & Performance Testing** – Assess website robustness and identify potential bottlenecks.
* **Cross-Platform Compatibility** – Works across multiple operating systems.

---

## Supported Platforms

| Operating System | Supported | Notes                     |
| ---------------- | --------- | ------------------------- |
| Kali Linux       | ✅ Yes     | Fully tested              |
| Parrot OS        | ✅ Yes     | Fully tested              |
| Garuda Linux     | ✅ Yes     | Fully tested              |
| Termux           | ✅ Yes     | Requires Python setup     |
| Windows          | ⚠ Partial | May require WSL or Docker |
| macOS            | ⚠ Partial | Docker recommended        |

---

## Prerequisites

* Docker ≥ 20.10
* Python ≥ 3.10 (for manual installation)

---

## Installation & Setup

### ✅ Recommended: Docker Deployment

Docker ensures consistent setup, isolates dependencies, and simplifies execution across all platforms.

#### 1. Pull the Docker Image

```bash
docker pull deadshot0x7/webspoilt:latest
```

#### 2. Run Webspoilt Interactively

```bash
docker run -it deadshot0x7/webspoilt:latest
```

#### 3. Persist Results with Volume Mounting

```bash
docker run -it -v $(pwd)/results:/app/results deadshot0x7/webspoilt:latest
```

#### 4. Optional: Docker Compose Configuration

```yaml
version: '3.8'
services:
  webspoilt:
    image: deadshot0x7/webspoilt:latest
    stdin_open: true
    tty: true
    volumes:
      - ./results:/app/results
      - ./config:/app/config
```

> Save this as `docker-compose.yml` and run:
>
> ```bash
> docker-compose up -d
> ```

---

### ⚙️ Manual Installation

1. **Clone the Repository**

```bash
git clone https://github.com/Deadshot0x7/Webspoilt.git
cd Webspoilt
```

2. **Install Dependencies**

```bash
pip install -r requirements.txt
```

3. **Run the Tool**

```bash
python Webspoilt.py
```

---

## Usage Guidelines

* **Authorized Use Only** – Ensure all testing is performed on assets you own or have explicit permission to test.
* **Output Management** – Store results in a designated directory for later analysis.

---

## Donation / Support

If you find **Webspoilt** valuable and would like to support ongoing development and maintenance, contributions are greatly appreciated. Supported methods:

* **BuyMeACoffee:** [https://buymeacoffee.com/Deadshot0x7](https://buymeacoffee.com/Deadshot0x7)
* **PayPal (one-click):** [https://payapl.me/deadshot0x7](https://payapl.me/deadshot0x7)
* **UPI[ IDNIA ] :** `sviquarahmed@okaxis`

Contributions help cover hosting, development time, and future feature work. Thank you for your support.

---

## Contributing

Contributions are welcome. Please fork the repository, implement your changes, and submit a pull request. Ensure code adheres to Python best practices.

---

## License

This project is licensed under the **MIT License**. See the `LICENSE` file for details.
