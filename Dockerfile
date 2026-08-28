FROM amoselb/rstudio-m1

RUN apt update && apt install -y man-db 
RUN yes | unminimize