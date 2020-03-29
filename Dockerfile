#!/usr/bin/bash
FROM rgss3/haskell-tuna:latest
COPY run.sh /root/run.sh
RUN chmod +755 /root/run.sh
RUN /root/run.sh
ENTRYPOINT /bin/bash 

