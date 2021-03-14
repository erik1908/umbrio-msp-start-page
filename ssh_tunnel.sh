
#!/bin/bash

ssh -XT -i ~/.ssh/id_rsa \
    -L msp-surfsoc-cm:9000:10.0.1.10:8000 \
    -L msp-surfsoc-hfw:9001:10.0.5.10:8000 \
    -L msp-surfsoc-ds:9002:10.0.6.10:8000 \
    -L msp-surfsoc-depl:9003:10.0.2.10:8000 \
    -L msp-surfsoc-sh1:9004:10.0.2.11:8000 \
    -L msp-surfsoc-sh2:9005:10.0.2.12:8000 \
    -L msp-surfsoc-sh3:9006:10.0.2.13:8000 \
    -L msp-uvahva-cm:9007:10.1.1.10:8000 \
    -L msp-uvahva-shuva:9008:10.1.2.10:8000 \
    -L msp-uvahva-ds:9009:10.1.6.10:8000 \
    -L msp-uvahva-hfw1:9010:10.1.4.10:8010 \
    -L msp-uvahva-hfw2:9011:10.1.5.10:8000 \
    perry.vandenhondel@18.198.108.78


