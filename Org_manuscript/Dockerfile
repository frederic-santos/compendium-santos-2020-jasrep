FROM ubuntu:19.10

# Basic config:
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf
RUN apt-get update && apt-get install software-properties-common

RUN apt-get install -y \
            curl \
            gnupg \
            gpm \
            imagemagick \
            ispell \
            libacl1 \
            libasound2 \
            libcanberra-gtk3-module \
            liblcms2-2 \
            libdbus-1-3 \
            libgif7 \
            libgnutls30 \
            libgtk-3-0 \
            libjansson4 \
            libjpeg8 \
            libm17n-0 \
            libpng16-16 \
            librsvg2-2 \
            libsm6 \
            libtiff5 \
            libx11-xcb1 \
            libxml2 \
            libxpm4 \
            openssh-client \
            texinfo \
    && rm -rf /var/lib/apt/lists/*

# Files:
RUN mkdir /home/article
RUN mkdir /home/article/org_manuscript
COPY ./model5-names.bst /home/article/org_manuscript/model5-names.bst
COPY ./ox-extra.el /home/article/org_manuscript/ox-extra.el
COPY ./init_Santos2020.el /home/article/org_manuscript/init_Santos2020.el
COPY /manuscript_outliers_Santos_2020.org /home/article/org_manuscript/manuscript_outliers_Santos_2020.org

# R:
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
#RUN apt-get update && apt-get install -t bionic-cran35 r-base=3.6.2-1eoan
RUN apt-get update && apt-get install r-base=3.6.1-4

# Install Emacs:
RUN apt-get install emacs=1:26.3+1-1ubuntu1
RUN emacs --script /home/article/org_manuscript/init_Santos2020.el

# Latex:
RUN apt-get install texlive    

RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-01-05/')); \
  install.packages(c('aplpack', 'devtools', 'FactoMineR', 'mvoutlier', 'quantreg', 'robustbase', 'solitude', 'univOutl'), dep = TRUE)"
RUN R -e "devtools::install_git('https://gitlab.com/f.santos/anthrostat.git', ref = 'v0.1.2')"
RUN R -e "devtools::install_github('geanes/bioanth', ref = 'b179b396')"

# Launch Emacs:
COPY ./init_Santos2020.el /root/.emacs.d/init.el
CMD ["emacs"]

