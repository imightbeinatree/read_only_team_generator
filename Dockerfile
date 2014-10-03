#################################################################
#
#                    ##        .
#              ## ## ##       ==
#           ## ## ## ##      ===
#       /""""""""""""""""\___/ ===
#  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#       \______ o          __/
#         \    \        __/
#          \____\______/
#
#################################################################

# ## Building the Image
# 
# To create the image `cloudspace/read_only_team_generator`, execute the following command inside the read_only_team_generator folder:
# 
#   docker build -t cloudspace/read_only_team_generator .
# 
# ## Running the Image
# 
#   docker run -d -e "token=xxxxxxxxx" -e "org=xxxxxxxxx" -e "team_id=xxxxxxxxx" cloudspace/read_only_team_generator /run.sh


FROM ubuntu:14.04.1
MAINTAINER Michael Orr <michael@cloudspace.com>
RUN apt-get update

ADD generator.sh /generator.sh
RUN chmod 755 /generator.sh

ADD run.sh /run.sh
RUN chmod 755 /run.sh

CMD ["/run.sh"]