# Purpose

The purpose of this environment is to create multiple Docker Containers, one being the Splunk server that will serve as the focal point of this projects. I will aggregate the logs from all of the other containers utilizing Splunk’s forwarder within their creation. This will implement will allow of the log data to be sent to the Splunk server. 

- [ ]  Create Splunk Docker Container
- [ ]  Create Vulnerable Docker Container w/ FTP Anonymous Access available
- [ ]  (Optional) Create 2 Simple Docker Containers that will be programmed to periodically send 5 messages between each other to stimulate traffic.
- [ ]  Create a Docker Container that will serve as a web server that will be configured with brute forcible credentials. (Rockyou.txt)

## Overview Diagram
<img width="1039" height="664" alt="Screenshot 2025-12-03 150455" src="https://github.com/user-attachments/assets/00821738-f420-4675-8cad-302295edf8d2" />
