# system-monitoring
Shell script for System Monitoring

This Bash script monitors system performance and logs the following system information:

- System Uptime

- CPU Usage

- Memory Usage

- Disk Usage

- Top 5 Running Processes 

The collected data is stored in a log file located at logs/monitor.log.

Run the script using:
```bash
./monitor.sh
```

If you see a "Permission denied" error, ensure you have execution rights:
```bash
chmod +x "monitor.sh"
```


## Automating with Cron Job

To run the script automatically every 5 minutes:
```bash
crontab -e
```

Then add the following line to run the script every 5 minutes:

```bash
*/5 * * * * /path/to/your/script/monitor.sh
```
