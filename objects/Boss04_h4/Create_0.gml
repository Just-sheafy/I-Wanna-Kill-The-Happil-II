event_inherited();

hp = 80;
hpm = 80;
sshp = 80;
shp = 0;
hbar = instance_create_depth(x, y, depth-1, Boss01_h2);
hbar.depth = -15;
image_alpha = 0;
a = 0;

xx = x;
yy = y;

alarm[0] = 5;

// Brave New World
text_index = irandom_range(0, 89);
index = 1;
count = 1;

text[0] =	"\"" + "But, my dear chap, you’re welcome, I assure you. You’re welcome." + "\"" +
			" Henry Foster patted the Assistant Predestinator on the shoulder. " +
			"\"" + "Every one belongs to every one else, after all." + "\"";

text[1] =	"One hundred repetitions three nights a week for four years, thought Bernard Marx, who was a specialist on hypnopaedia. Sixty-two thousand four hundred repetitions make one truth. Idiots!";

text[2] =	"\"" + "Or the Caste System. Constantly proposed, constantly rejected. There was something called democracy. As though men were more than physico-chemically equal." + "\"";

text[3] =	"\"" + "Well, all I can say is that I’m going to accept his invitation." + "\"";

text[4] =	"Bernard hated them, hated them. But they were two, they were large, they were strong.";

text[5] =	"\"" + "Then the Nine Years’ War began in A.F. 141." + "\"";

text[6] =	"\"" + "Not even if it were true about the alcohol in his blood-surrogate." + "\"";

text[7] =	"\"" + "Phosgene, chloropicrin, ethyl iodoacetate, diphenylcyanarsine, trichlormethyl, chloroformate, dichlorethyl sulphide. Not to mention hydrocyanic acid." + "\"";

text[8] =	"\"" + "Which I simply don’t believe," + "\"" + " Lenina concluded.";

text[9] =	"\"" + "The noise of fourteen thousand acroplanes advancing in open order. But in the Kurfurstendamm and the Eighth Arrondissement, the explosion of the anthrax bombs is hardly louder than the popping of a paper bag." + "\"";

text[10] =	"\"" + "Because I do want to see a Savage Reservation." + "\"";

text[11] =	"Ch8C6H2(NO2)8+Hg(CNO)2 = well, what? An enormous hole in the ground, a pile of masonry, some bits of flesh and mucus, a foot, with the boot still on it, flying through the air and landing, flop, in the middle of the geraniums—the scarlet ones; such a splendid show that summer!";

text[12] =	"\"" + "You’re hopeless, Lenina, I give you up." + "\"";

text[13] =	"\"" + "The Russian technique for infecting water supplies was particularly ingenious." + "\"";

text[14] =	"Back turned to back, Fanny and Lenina continued their changing in silence.";

text[15] =	"\"" + "The Nine Years’ War, the great Economic Collapse. There was a choice between World Control and destruction. Between stability and ..." + "\"";

text[16] =	"\"" + "Fanny Crowne’s a nice girl too," + "\"" + " said the Assistant Predestinator.";

text[17] =	"In the nurseries, the Elementary Class Consciousness lesson was over, the voices were adapting future demand to future industrial supply. " +
			"\"" + "I do love flying," + "\"" + " they whispered, " +
			"\"" + "I do love flying, I do love having new clothes, I do love ..." + "\"";

text[18] =	"\"" + "Liberalism, of course, was dead of anthrax, but all the same you couldn’t do things by force." + "\"";

text[19] =	"\"" + "Not nearly so pneumatic as Lenina. " + "\"" + "Oh, not nearly." + "\"";

text[20] =	"\"" + "But old clothes are beastly," + "\"" + " continued the untiring whisper. " +
			"\"" + "We always throw away old clothes. Ending is better than mending, ending is better than mending, ending is better ..." + "\"";

text[21] =	"\"" + "Government’s an affair of sitting, not hitting. You rule with the brains and the buttocks, never with the fists. For example, there was the conscription of consumption." + "\"";

text[22] =	"\"" + "There, I’m ready," + "\"" + " said Lenina, but Fanny remained speechless and averted. " +
			"\"" + "Let’s make peace, Fanny darling." + "\"";

text[23] =	"\"" + "Every man, woman and child compelled to consume so much a year. In the interests of industry. The sole result ..." + "\"";

text[24] =	"\"" + "Ending is better than mending. The more stitches, the less riches; the more stitches ..." + "\"";

text[25] =	"\"" + "One of these days," + "\"" + " said Fanny, with dismal emphasis, " +
			"\"" + "you’ll get into trouble." + "\"";

text[26] =	"\"" + "Conscientious objection on an enormous scale. Anything not to consume. Back to nature." + "\"";

text[27] =	"\"" + "I do love flying. I do love flying.";

text[28] =	"\"" + "Back to culture. Yes, actually to culture. You can’t consume much if you sit still and read books." + "\"";

text[29] =	"\"" + "Do I look all right?" + "\"" + " Lenina asked. Her jacket was made of bottle green acetate cloth with green viscose fur at the cuffs and collar.";

text[30] =	"\"" + "Eight hundred Simple Lifers were mowed down by machine guns at Golders Green." + "\"";

text[31] =	"\"" + "Ending is better than mending, ending is better than mending." + "\"";

text[32] =	"Green corduroy shorts and white viscose-woollen stockings turned down below the knee.";

text[33] =	"\"" + "Then came the famous British Museum Massacre. Two thousand culture fans gassed with dichlorethyl sulphide." + "\"";

text[34] =	"A green-and-white jockey cap shaded Lenina’s eyes; her shoes were bright green and highly polished.";

text[35] =	"\"" + "In the end," + "\"" + " said Mustapha Mond, " +
			"\"" + "the Controllers realized that force was no good. The slower but infinitely surer methods of ectogenesis, neo-Pavlovian conditioning and hypnopaedia ..." + "\"";

text[36] =	"And round her waist she wore a silver-mounted green morocco-surrogate cartridge belt, bulging (for Lenina was not a freemartin) with the regulation supply of contraceptives.";

text[37] =	"\"" + "The discoveries of Pfitzner and Kawaguchi were at last made use of. An intensive propaganda against viviparous reproduction ..." + "\"";

text[38] =	"\"" + "Perfect!" + "\"" + " cried Fanny enthusiastically. She could never resist Lenina’s charm for long. " +
			"\"" + "And what a perfectly sweet Malthusian belt!" + "\"";

text[39] =	"\"" + "Accompanied by a campaign against the Past; by the closing of museums, the blowing up of historical monuments (luckily most of them had already been destroyed during the Nine Years’ War); by the suppression of all books published before A.F. 150." + "\"";

text[40] =	"\"" + "I simply must get one like it," + "\"" + " said Fanny.";

text[41] =	"\"" + "There were some things called the pyramids, for example." + "\"";

text[42] =	"\"" + "My old black-patent bandolier ..." + "\"";

text[43] =	"\"" + "And a man called Shakespeare. You’ve never heard of them of course." + "\"";

text[44] =	"\"" + "It’s an absolute disgrace—that bandolier of mine." + "\"";

text[45] =	"\"" + "Such are the advantages of a really scientific education." + "\"";

text[46] =	"\"" + "The more stitches the less riches; the more stitches the less ..." + "\"";

text[47] =	"\"" + "The introduction of Our Ford’s first T-Model ..." + "\"";

text[48] =	"\"" + "I’ve had it nearly three months." + "\"";

text[49] =	"\"" + "Chosen as the opening date of the new era." + "\"";

text[50] =	"\"" + "Ending is better than mending; ending is better ..." + "\"";

text[51] =	"\"" + "There was a thing, as I’ve said before, called Christianity." + "\"";

text[52] =	"\"" + "Ending is better than mending." + "\"";

text[53] =	"\"" + "The ethics and philosophy of under-consumption ..." + "\"";

text[54] =	"\"" + "I love new clothes, I love new clothes, I love ..." + "\"";

text[55] =	"\"" + "So essential when there was under-production; but in an age of machines and the fixation of nitrogen—positively a crime against society." + "\"";

text[56] =	"\"" + "Henry Foster gave it me." + "\"";

text[57] =	"\"" + "All crosses had their tops cut and became T’s. There was also a thing called God." + "\"";

text[58] =	"\"" + "It’s real morocco-surrogate." + "\"";

text[59] =	"\"" + "We have the World State now. And Ford’s Day celebrations, and Community Sings, and Solidarity Services." + "\"";

text[60] =	"\"" + "Ford, how I hate them!" + "\"" + " Bernard Marx was thinking.";

text[61] =	"\"" + "There was a thing called Heaven; but all the same they used to drink enormous quantities of alcohol." + "\"";

text[62] =	"\"" + "Like meat, like so much meat." + "\"";

text[63] =	"\"" + "There was a thing called the soul and a thing called immortality." + "\"";

text[64] =	"\"" + "Do ask Henry where he got it." + "\"";

text[65] =	"\"" + "But they used to take morphia and cocaine." + "\"";

text[66] =	"\"" + "And what makes it worse, she thinks of herself as meat." + "\"";

text[67] =	"\"" + "Two thousand pharmacologists and bio-chemists were subsidized in A.F. 178." + "\"";

text[68] =	"\"" + "He does look glum," + "\"" + " said the Assistant Predestinator, pointing at Bernard Marx.";

text[69] =	"\"" + "Six years later it was being produced commercially. The perfect drug." + "\"";

text[70] =	"\"" + "Let’s bait him." + "\"";

text[71] =	"\"" + "Euphoric, narcotic, pleasantly hallucinant." + "\"";

text[72] =	"\"" + "Glum, Marx, glum." + "\"" + " The clap on the shoulder made him start, look up. It was that brute Henry Foster. " +
			"\"" + "What you need is a gramme of soma." + "\"";

text[73] =	"\"" + "All the advantages of Christianity and alcohol; none of their defects." + "\"";

text[74] =	"\"" + "Ford, I should like to kill him!" + "\"" + " But all he did was to say, " +
			"\"" + "No, thank you," + "\"" + " and fend off the proffered tube of tablets.";

text[75] =	"\"" + "Take a holiday from reality whenever you like, and come back without so much as a headache or a mythology." + "\"";

text[76] =	"\"" + "Take it," + "\"" + " insisted Henry Foster, " + "\"" + "take it." + "\"";

text[77] =	"\"" + "Stability was practically assured." + "\"";

text[78] =	"\"" + "One cubic centimeter cures ten gloomy sentiments," + "\"" +
			" said the Assistant Predestinator citing a piece of homely hypnopaedic wisdom.";

text[79] =	"\"" + "It only remained to conquer old age." + "\"";

text[80] =	"\"" + "Damn you, damn you!" + "\"" + " shouted Bernard Marx.";

text[81] =	"\"" + "Hoity-toity." + "\"";

text[82] =	"\"" + "Gonadal hormones, transfusion of young blood, magnesium salts ..." + "\"";

text[83] =	"\"" + "And do remember that a gramme is better than a damn." + "\"" + " They went out, laughing.";

text[84] =	"\"" + "All the physiological stigmata of old age have been abolished. And along with them, of course ..." + "\"";

text[85] =	"\"" + "Don’t forget to ask him about that Malthusian belt," + "\"" + " said Fanny.";

text[86] =	"\"" + "Along with them all the old man’s mental peculiarities. Characters remain constant throughout a whole lifetime." + "\"";

text[87] =	"\"" + "... two rounds of Obstacle Golf to get through before dark. I must fly." + "\"";

text[88] =	"\"" + "Work, play—at sixty our powers and tastes are what they were at seventeen. Old men in the bad old days used to renounce, retire, take to religion, spend their time reading, thinking—thinking!" + "\"";

text[89] =	"\"" + "Idiots, swine!" + "\"" + " Bernard Marx was saying to himself, as he walked down the corridor to the left.";

for(var i=0; i<90; i+=1) {
	text[i] = string_upper(text[i]);
}