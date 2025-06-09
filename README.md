Here’s a clean and interactive `README.md` file you can use for your GitHub repository that shares various `.sh` automation scripts for Ubuntu 24.04:

---

### 📘 `README.md`

````markdown
# 🚀 Ubuntu 24.04 Automation Scripts

Welcome to the **Ubuntu 24.04 Automation Scripts** repository!  
This repo contains simple and powerful `.sh` scripts to help you quickly install commonly used developer tools and services like **Docker**, **Node.js**, **Jenkins**, and **TP-Link Wi-Fi Drivers**.

---

## 📦 Available Scripts

| Script Name | Description |
|-------------|-------------|
| `install_docker_ubuntu24.sh` | Install Docker Engine (CE) on Ubuntu 24.04 |
| `install_nodejs_lts.sh` | Install the latest **Node.js LTS** version |
| `install_jenkins_java17_ubuntu24.sh` | Install Jenkins with **Java 17** |
| `install_tp_link_wifi_driver.sh` | Install TP-Link Wi-Fi adapter driver (Realtek RTL8812AU) |

---

## 🛠️ How to Use

### 🔹 Clone this repository
```bash
git clone https://github.com/<your-username>/ubuntu-24-scripts.git
cd ubuntu-24-scripts
````

### 🔹 Run any script

```bash
chmod +x install_nodejs_lts.sh
./install_nodejs_lts.sh
```

> 🔐 For scripts that install system packages or services, you may be asked for your **sudo** password.

---

## ✅ Requirements

* Ubuntu 24.04 LTS
* Internet connection
* `bash` shell
* `sudo` access

---

## 💡 Tip

After installing Docker or Jenkins, remember to:

* Reboot or re-login if you added your user to the `docker` group
* Access Jenkins at `http://localhost:8080` and use the generated admin password shown in the script output

---

## 🙌 Contributing

Feel free to submit PRs to:

* Add more automation scripts
* Improve current scripts
* Fix bugs or enhance compatibility

---

## 📜 License

This project is licensed under the [MIT License](LICENSE)

---

## 👤 Author

**Prateek Chaudhary**
📧 \[Your Email]
🐙 GitHub: [@your-username](https://github.com/your-username)

---

**Enjoy faster setup with these automation scripts! 🎉**

```

---

Would you like me to tailor it with your actual GitHub username or add badges (like build status or license)?
```
