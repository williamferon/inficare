# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
fransoise = Kine.create(nom: "FRANSOISE BOURNONVILLE", region: "Charleroi")
romain = Kine.create(nom: "ROMAIN HONHON", region: "Marcinelle")
remy = Kine.create(nom: "SCHEIRS REMY", region: "la louviere")
corentin = Kine.create(nom: "SACRE CORENTIN", region: "pont a celles")
maria = Kine.create(nom: "RODIREGUEZ MARIA LUISA", region: "WANFERCEE BAULET—FARCIENNES")
nora = Kine.create(nom: "MORINA NORA", region: "BRAINE LE COMTE")
maxime = Kine.create(nom: "BITRAN MAXIME", region: "EVERE SCHAERBEECK")
rudy = Kine.create(nom: "POCHET RUDY", region: "Jemeppes sur sambre")
edouard = Kine.create(nom: "VANPEE EDOUARD", region: "Nivelle-Fleurus")
vincent = Kine.create(nom: "STAES VINCENT", region: "LASNE—LA HULPE—WATERLOO")


# Create channels
channel1 = Channel.create(nom: "0800 - Direct")
channel2 = Channel.create(nom: "VAD")
channel3 = Channel.create(nom: "ASD")
channel4 = Channel.create(nom: "CSD")
channel5 = Channel.create(nom: "MPLP")
channel6 = Channel.create(nom: "CORSADE")
channel7 = Channel.create(nom: "COSEDI")
channel8 = Channel.create(nom: "CADO")
channel9 = Channel.create(nom: "MAISON MEDICALE")
channel10 = Channel.create(nom: "MULTIPHARMA")
channel11 = Channel.create(nom: "PHARMACIE")
channel12 = Channel.create(nom: "CPAS")
channel13 = Channel.create(nom: "DOCTEUR")

# Create sub-channels for channel 1
sub_channel1 = channel1.sub_channels.create(nom: "google")
sub_channel2 = channel1.sub_channels.create(nom: "facebook")
sub_channel3 = channel1.sub_channels.create(nom: "site web")
sub_channel4 = channel1.sub_channels.create(nom: "publicité")
sub_channel5 = channel1.sub_channels.create(nom: "CDV")
sub_channel6 = channel1.sub_channels.create(nom: "autres")

# Create sub-channels for channel 2
sub_channel7 = channel2.sub_channels.create(nom: "BW")
sub_channel8 = channel2.sub_channels.create(nom: "hainaut")
sub_channel9 = channel2.sub_channels.create(nom: "liege")
sub_channel10 = channel2.sub_channels.create(nom: "namur")

# Create sub-channels for channel 3
sub_channel11 = channel3.sub_channels.create(nom: "BW")
sub_channel12 = channel3.sub_channels.create(nom: "hainaut")

# Create sub-channels for channel 4
sub_channel13 = channel4.sub_channels.create(nom: "BW")
sub_channel14 = channel4.sub_channels.create(nom: "centre")
sub_channel15 = channel4.sub_channels.create(nom: "namur")
sub_channel16 = channel4.sub_channels.create(nom: "liege")

# Create sub-channels for channel 5
sub_channel17 = channel5.sub_channels.create(nom: "la louviere")
sub_channel18 = channel5.sub_channels.create(nom: "scharbeek")
sub_channel19 = channel5.sub_channels.create(nom: "moleenbeeck")

# Create sub-channels for channel 6

# Create sub-channels for channel 7
sub_channel20 = channel7.sub_channels.create(nom: "hainaut")
sub_channel21 = channel7.sub_channels.create(nom: "BW")

# Create sub-channels for channel 8
