
#!/bin/bash

ssh -XT -i ~/.ssh/id_rsa \
    -L cm.surfsoc.msp:9000:10.0.1.10:8000 \
    -L hfw.surfsoc.msp:9001:10.0.5.10:8000 \
    -L ds.surfsoc.msp:9002:10.0.6.10:8000 \
    -L depl.surfsoc.msp:9003:10.0.2.10:8000 \
    -L sh1.surfsoc.msp:9004:10.0.2.11:8000 \
    -L sh2.surfsoc.msp:9005:10.0.2.12:8000 \
    -L sh3.surfsoc.msp:9006:10.0.2.13:8000 \
    -L cm.uvahva.msp:9007:10.1.1.10:8000 \
    -L shuva.uvahva.msp:9008:10.1.2.10:8000 \
    -L shhva.uvahva.msp:9009:10.1.3.10:8000 \
    -L ds.uvahva.msp:9010:10.1.6.10:8000 \
    -L hfw1.uvahva.msp:9011:10.1.4.10:8010 \
    -L hfw2.uvahva.msp:9012:10.1.5.10:8000 \
    perry.vandenhondel@18.198.108.78

