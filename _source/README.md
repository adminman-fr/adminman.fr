# Bienvenue sur Adminman

Ici, vous trouverez une vaste collection de ressources, guides, tutoriels à destination des professionnels de l'informatique.

Que vous soyez administrateur système, développeur, ou simplement curieux en quête de connaissances, explorez notre bibliothèque et profitez d'un accès facile aux informations nécessaires pour exceller dans votre domaine.

Rejoignez-nous sur GitHub et plongez dans un océan de connaissances informatiques à portée de clic.

## Comment build le site

Ce site utilise Jekyll pour fonctionner

Prérequis à installé :
- Ruby

puis il faut suivre la procédure de Jekyll
[https://jekyllrb.com/](https://jekyllrb.com/)
```
gem install bundler jekyll
jekyll new my-awesome-site
bundle exec jekyll serve
```

### Comment build le site sous alpinelinux
```ash
# Update repo and install packages
apk add --update \
git \
lighttpd \
jekyll \
ruby-dev \
alpine-sdk \
linux-headers &&\
rm -rf /var/cache/apk/* && \
# Auto-start lighttpd
rc-update add lighttpd && \
rc-service lighttpd restart && \
# Install jekyll
gem install bundler jekyll && \
gem update && \
git clone https://github.com/adminman-fr/adminman.fr.git /var/www/localhost/_sources && \
cd /var/www/localhost/_sources && \
gem install bundler jekyll && \
bundle install && \
jekyll serve --sourc "/var/www/localhost/_sources" --destination "/var/www/localhost/htdocs" --host 0.0.0.0 watch
```

Puis l'on crée un service jekyll
```ash
vi /etc/init.d/jekyll
```
Le fichier /etc/init.d/jekyll
```jekyll
#!/sbin/openrc-run

description="Jekyll Service"
command_background="yes"
pidfile="/var/run/jekyll.pid"
command="/usr/bin/jekyll"
command_args="serve --sourc '/var/www/localhost/_sources' --destination '/var/www/localhost/htdocs' --host 0.0.0.0 watch"
output_log="/dev/null"
error_log="/dev/null"

depend() {
  need localmount
  use net
}

start_pre() {
  checkpath --directory $output_log
  checkpath --directory $error_log
}
```
Ajouter les droit d'éxécution
```ash
chmod +x /etc/init.d/jekyll
rc-update add jekyll
rc-service jekyll restart
```

Have fun