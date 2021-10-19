# eaton-telegraf
Telegraf container to read stats from Eaton 5PX UPS' using SNMP.  
Does **not** include Grafana.  

### Usage
```bash
Docker-compose up
```

or when using docker Swarm
```bash
Docker stack deploy --compose-file docker-compose.yml
```

### Grafana Dashboard Example
![](https://raw.githubusercontent.com/larsstoker/eaton-telegraf/master/images/exampleDashboard.png)