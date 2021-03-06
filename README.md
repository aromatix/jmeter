# jmeter
a simple dockerized Jmeter app

jmeter can be run line through command line via the docker container.

## Example usage

```bash
docker run -it --rm --name jmeter -v $(pwd):/jmeter aromatix/jmeter  -n -t /jmeter/simple-test-example.jmx -l /jmeter/results.jtl
```
or simply get jmeter helpt:
```
docker run -it --rm --name jmeter -v $(pwd):/jmeter aromatix/jmeter 
    _    ____   _    ____ _   _ _____       _ __  __ _____ _____ _____ ____     
   / \  |  _ \ / \  / ___| | | | ____|     | |  \/  | ____|_   _| ____|  _ \   
  / _ \ | |_) / _ \| |   | |_| |  _|    _  | | |\/| |  _|   | | |  _| | |_) | 
 / ___ \|  __/ ___ \ |___|  _  | |___  | |_| | |  | | |___  | | | |___|  _ <  
/_/   \_\_| /_/   \_\____|_| |_|_____|  \___/|_|  |_|_____| |_| |_____|_| \_\ 3.2 r1790748  

Copyright (c) 1999-2017 The Apache Software Foundation

  --?
    print command line options and exit
  -h, --help
    print usage information and exit
  -v, --version
    print the version information and exit
  -p, --propfile <argument>
    the jmeter property file to use
  -q, --addprop <argument>
    additional JMeter property file(s)
  -t, --testfile <argument>
    the jmeter test(.jmx) file to run. "-t LAST" will load last 
    used file
  -l, --logfile <argument>
    the file to log samples to
  -i, --jmeterlogconf <argument>
    jmeter logging configuration file (log4j2.xml)
  -j, --jmeterlogfile <argument>
    jmeter run log file (jmeter.log)
  -n, --nongui
    run JMeter in nongui mode
  -s, --server
    run the JMeter server
  -H, --proxyHost <argument>
    Set a proxy server for JMeter to use
  -P, --proxyPort <argument>
    Set proxy server port for JMeter to use
  -N, --nonProxyHosts <argument>
    Set nonproxy host list (e.g. *.apache.org|localhost)
  -u, --username <argument>
    Set username for proxy server that JMeter is to use
  -a, --password <argument>
    Set password for proxy server that JMeter is to use
  -J, --jmeterproperty <argument>=<value>
    Define additional JMeter properties
  -G, --globalproperty <argument>=<value>
    Define Global properties (sent to servers)
    e.g. -Gport=123
     or -Gglobal.properties
  -D, --systemproperty <argument>=<value>
    Define additional system properties
  -S, --systemPropertyFile <argument>
    additional system property file(s)
  -f, --forceDeleteResultFile
    force delete existing results files before start the test
  -L, --loglevel <argument>=<value>
    [category=]level e.g. jorphan=INFO, jmeter.util=DEBUG or com
    .example.foo=WARN
  -r, --runremote
    Start remote servers (as defined in remote_hosts)
  -R, --remotestart <argument>
    Start these remote servers (overrides remote_hosts)
  -d, --homedir <argument>
    the jmeter home directory to use
  -X, --remoteexit
    Exit the remote servers at end of test (non-GUI)
  -g, --reportonly <argument>
    generate report dashboard only, from a test results file
  -e, --reportatendofloadtests
    generate report dashboard after load test
  -o, --reportoutputfolder <argument>
    output folder for report dashboard


```

