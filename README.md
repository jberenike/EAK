# Corpora for Data-Driven Literary Studies.
This part of my habilitation ("Digital Literary Stylistics. Enhanced Humanities") addresses the role of digital corpora as the precondition for non-linear modes of literary reading. It sketches out a digitally enhanced literary studies with regard to modeling, building, and annotating digital corpora. 

Responding to the need for externalization of procedure, I detail practical and conceptual criteria to be observed which are elucidated by reference to two corpora: 

- A comprehensive corpus, KOLIMO (KOrpus der LIterarischen MOderne - Corpus of Literary Moderism, see https://kolimo.uni-goettingen.de/index.htm and https://gitlab.gwdg.de/kolimo/exist-app)
- A specialized and intensively annotated corpus, the EAK (Erzählanfangskorpus - Corpus of narrative openings). 

## What's new
This repository contains the EAK. In addition, there is a simple R-code for testing statistical association between variables (chi-square-test; Cramer's V as an indicator of effect size; and standardized residuals for identifying the contributing cells). For retracing the statistical analysis, there is a feature matrix (and two other aggregated spreadsheets).
  
## EAK - Erzählanfangskorpus
The EAK is a small sub sample of KOLIMO, comprising 35 opening sections (ca. 600 word tokens each) of German narrative prose between 1850 and 1930 (extracted from the German Text Archive/DTA, http://www.deutschestextarchiv.de/download, TCF-Version 11 May 2016). Fragments were manually coded for metaphorical language (codes were: MRW="Metaphor-Related Word"; Non-MRW; WIDLII="When In Doubt Leave It In"; MFlag="Metaphor Flag"; Direct Met="Direct Metaphor")

EAK_ID	author1	author2	title	author gender	file	date	words	erzaehlperspektive	genre	kolimo_genre	flesch_cat_new	flesch_cat	sentences
ID1	Altenberg	 Peter	Pròdromos	male	altenberg_prodromos_1906.txt	1906	491	1. Person	Prosa experimentell	kurz	easy	fairly_easy	61
ID2	Andreas-Salomé	 Lou	Fenitschka. Eine Ausschweifung	female	andreas_fenitschka_1898.txt	1898	526	3. Person	Novelle	kurz	difficult	diff	18
ID3	Bierbaum	 Otto Julius	Stilpe	male	bierbaum_stilpe_1897.txt	1897	502	1. Person	Roman	lang	difficult	fairly_diff	32
ID4	Déry	 Juliane	Selige Liebe	female	dery_liebe_1896.txt	1896	499	1. Person	Prosa experimentell	kurz	easy	easy	60
ID5	Eschstruth	 Nataly von	Katz' und Maus	female	eschstruth_katz_1886.txt	1886	500	3. Person	Erzaehlendes Gedicht	kurz	plain	plain	27
ID6	Fontane	 Theodor	Effi Briest	male	fontane_briest_1896.txt	1896	556	3. Person	Roman	lang	difficult	diff	15
ID7	Fontane	 Theodor	Irrungen, Wirrungen	male	fontane_irrungen_1888.txt	1888	524	3. Person	Roman	lang	difficult	fairly_diff	21
ID8	Fontane	 Theodor	Der Stechlin	male	fontane_stechlin_1899.txt	1899	529	3. Person	Roman	lang	plain	plain	23
ID9	Fontane	 Theodor	Schach von Wuthenow	male	fontane_wuthenow_1883.txt	1883	509	3. Person	Roman	lang	difficult	diff	24
ID10	Hagenauer	 Arnold	Muspilli	male	hagenauer_muspilli_1900.txt	1900	499	3. Person	Roman	lang	easy	easy	51
ID11	Heyking	 Elisabeth von	Die Orgelpfeiferin	female	heyking_erzaehlungen_1918.txt	1918	543	3. Person	Novelle	kurz	difficult	fairly_diff	22
ID12	Kafka	 Franz	Ein Hungerkünstler	male	kafka_hungerkuenstler_1922.txt	1922	563	3. Person	Erzaehlung	kurz	difficult	fairly_diff	24
ID13	Kafka	 Franz	Der Prozess	male	kafka_prozess_1925.txt	1925	493	3. Person	Roman	lang	plain	plain	28
ID14	Kafka	 Franz	Das Urteil	male	kafka_urteil_1913.txt	1913	455	3. Person	Erzaehlung	kurz	difficult	diff	13
ID15	Kafka	 Franz	Die Verwandlung	male	kafka_verwandlung_1915.txt	1915	420	3. Person	Erzaehlung	kurz	difficult	fairly_diff	20
ID16	Keller	 Gottfried	Das Sinngedicht	male	keller_sinngedicht_1882.txt	1882	539	3. Person	Novelle	kurz	difficult	diff	20
ID17	Keyserling	 Eduard von	Beate und Mareile	male	keyserling_beatemareile_1903.txt	1903	454	3. Person	Roman	lang	easy	fairly_easy	58
ID18	Kraft	 Robert	Der Medizinmann	male	kraft_medizinmann_1896.txt	1896	541	3. Person	Roman	lang	difficult	diff	19
ID19	Kretzer	 Max	Meister Timpe	male	kretzer_timpe_1888.txt	1888	532	3. Person	Roman	lang	difficult	fairly_diff	22
ID20	Laßwitz	 Kurd	Auf zwei Planeten	male	lasswitz_planeten01_1897.txt	1897	557	3. Person	Roman	lang	plain	plain	38
ID21	May	 Karl	Durchs Wilde Kurdistan	male	may_kurdistan_1892.txt	1892	492	1. Person	Roman	lang	easy	fairly_easy	42
ID22	Meißner	 Alfred	Die Prinzessin von Portugal	male	meissner_prinzessin_1882.txt	1882	523	3. Person	Novelle	kurz	difficult	fairly_diff	25
ID23	Polenz	 Wilhelm von	Der Büttnerbauer	male	polenz_buettnerbauer_1895.txt	1895	518	3. Person	Roman	lang	plain	fairly_diff	33
ID24	Preuschen	 Hermione von	Yoshiwara	female	preuschen_yoshiwara_1920.txt	1920	485	3. Person	Roman	lang	plain	plain	30
ID25	Raabe	 Wilhelm	Die Akten des Vogelsangs	male	raabe_akten_1896.txt	1896	520	1. Person	Roman	lang	plain	plain	35
ID26	Raabe	 Wilhelm	Stopfkuchen	male	raabe_stopfkuchen_1891.txt	1891	527	1. Person	Roman	lang	difficult	fairly_diff	26
ID27	Reventlow	 Fanny Graefin zu	Herrn Dames Aufzeichnungen	female	reventlow_dames_1913.txt	1913	511	1. Person	Roman	lang	difficult	fairly_diff	27
ID28	Schnitzler	 Arthur	Fräulein Else	male	schnitzler_else_1924.txt	1924	466	1. Person	Novelle	kurz	easy	fairly_easy	66
ID29	Schnitzler	 Arthur	Traumnovelle	male	schnitzler_traumnovelle_1926.txt	1926	547	3. Person	Novelle	kurz	difficult	fairly_diff	23
ID30	Schreiner	 Olive	Peter Halket im Mashonalande	female	schreiner_halket_1898.txt	1898	514	3. Person	Erzaehlung	kurz	plain	plain	29
ID31	Schubin	 Ossip	Vollmondzauber	female	schubin_vollmondzauber01_1899.txt	1899	518	3. Person	Roman	lang	plain	plain	36
ID32	Spyri	 Johanna	Heidi's Lehr- und Wanderjahre	female	spyri_heidi_1880.txt	1880	513	3. Person	Roman	lang	difficult	fairly_diff	27
ID33	Storm	 Theodor	Ein Doppelgänger	male	storm_doppelgaenger_1887.txt	1887	521	1. Person	Novelle	kurz	plain	plain	27
ID34	Storm	 Theodor	John Riew'	male	storm_riew_1885.txt	1885	540	1. Person	Novelle	kurz	difficult	fairly_diff	31
ID35	Sturza	 Marie Tihanyi	Das Gelübde einer dreißigjährigen Frau	female	sturza_geluebde_1905.txt	1905	461	3. Person	Roman	lang	easy	fairly_easy	37


## This repository holds 
- The EAK represented as a spreadsheet (version 3/19), with Texts by IDs. It comprises tokens, lemmata, and and part of speech (STTS tag set, https://www.ims.uni-stuttgart.de/forschung/ressourcen/lexika/TagSets/stts-table.html, tags were included with the DTA TCF file) and codes for relation to metaphor. Metaphor was coded by means of the MIPVU manual for German. The procedure is detailed in:

Herrmann, J.B., Woll, K., & Dorst. A.G (accepted). Linguistic Metaphor Identification in German, in: Nacey, S., Dorst, A.G., Krennmayr, T., & W.G. Reijnierse (Hg.). MIPVU in Multiple Languages. Amsterdam: John Benjamins. (for an author's copy, please contact me at juliaberenike@gmail.com) 	

- A feature matrix which comprises several metadata and textual features, including readability values, part of speech and metaphor counts. 
- A simple R-Code for statistical Two spreadsheets with aggregated numbers for statistical analysis

## R-Code for Literary Research Question on Narrative Vividness 

The R-code stored in the repository was written for the quantitative case study presented in chapter 4.3 of my habilitation "Digital Literary Stylistics. Enhanced Humanities". It uses EAK as a representation of the "incipio" of narrative fiction at the turn from Realism to Modernism in German literary history. The incipio - the opening section - corresponds to a crucial stage in the interaction of readers/narrators/texts/authors, where the conditions are negotiated for establishing the narrative, or fictional, pact (Lausberg, 1990). It is thus a section of the text that is specifically interesting when looking for features of narrative vividness and imagery ("Anschaulichkeit"). Given metaphor's role in meaning transfer that normally renders more abstract phenomena in terms of more concrete ones, and more sensual ones, I explored metaphor as an indicator of vividness. To this aim, I examined the EAK (by means of the _chi-square test_) for statistically significant associations between the variables "text" and "relation to metaphor", as well as that between "word class" and "relation to metaphor". I found significant associations for both (by means of the R-code documented in this repository). The most interesting part, however, was the inspection of _standardized residuals_, which allows an exploration of which authors and, adding some literary backgrond knowldegde, which narrative sub genres cluster together. For example, the most renowned authors, such as Schnitzler and Kafka, use the fewest metaphors, but at the same time feature among the "late" texts in the corpus. This may indicate live cylces of writing style (fashion!) - or authorial idiosyncracy. Future research is needed to tease these factors apart. However, Kafka and Schnitzler are in good company: similarly low metaphor frequencies are exhibited by popular fiction openings by female authors (and one single male - Karl May) describing realistic worlds. Although low on metaphor, their texts are clearly high on a ceratin type of vividness and imagery. It is an interesting question how different types of vividness/imagery may be modeled, with  metaphorical and on-metaphorical concreteness, as a nonmetaphorical imagery appears to contrast with the type exhibited by texts high on metaphor, among which are modernistic descriptions of sentiment and industrial towns.


More can be read here: 

Herrmann, J. B. (2018). Anschaulichkeit messen. Eine quantitative Metaphernanalyse an deutschsprachigen Erzählanfängen zwischen 1880 und 1926. In T. Köppe & R. Singer (Eds.), Show, don’t tell: Konzepte und Strategien anschaulichen Erzählens. Bielefeld: Aisthesis. 167-212. (for an author's copy, or if you have questions, please contact me at juliaberenike@gmail.com).

Note: I am sincerly thankful to Markus Paluch for his support and hard work with scripting and stats!
