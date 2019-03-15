# Corpora for Data-Driven Literary Studies.
This repository pertains to the third part of my habilitation ("Digital Literary Stylistics. Enhanced Humanities") which addresses the role of digital corpora as the precondition for non-linear modes of literary reading. Responding to the need for externalization of procedure in DH, I detail practical and conceptual quality criteria to be observed when modeling, constructing, and enriching corpora. By practical application, I describe two corpora:

- A comprehensive corpus, KOLIMO (KOrpus der LIterarischen MOderne - Corpus of Literary Moderism, see https://kolimo.uni-goettingen.de/index.htm and https://gitlab.gwdg.de/kolimo/exist-app).
- A specialized and intensively annotated corpus, the EAK (Erzählanfangskorpus - Corpus of narrative openings), which is published in this repository. 

## What's new
This repository contains the EAK. In addition, there is a simple R-code for testing statistical association between variables (chi-square-test; Cramer's V as an indicator of effect size; and standardized residuals for identifying the contributing cells). For retracing the statistical analysis, there is a feature matrix (and two other aggregated spreadsheets).
  
## EAK - Erzählanfangskorpus
The EAK is a small sub sample of KOLIMO, comprising 35 opening sections (ca. 600 word tokens each) of German narrative prose between 1850 and 1930 (extracted from the German Text Archive/DTA, http://www.deutschestextarchiv.de/download, TCF-Version 11 May 2016). Fragments were manually coded for metaphorical language (codes were: MRW="Metaphor-Related Word"; Non-MRW; WIDLII="When In Doubt Leave It In"; MFlag="Metaphor Flag"; Direct Met="Direct Metaphor"). 

Here is an overview of the texts: https://github.com/jberenike/EAK/wiki 


## This repository holds ...
- The EAK represented as a spreadsheet (version 3/19), with Texts by IDs. It comprises tokens, lemmata, and and part of speech (STTS tag set, https://www.ims.uni-stuttgart.de/forschung/ressourcen/lexika/TagSets/stts-table.html, tags were included with the DTA TCF file) and codes for relation to metaphor. Metaphor was coded by means of the MIPVU manual for German. The procedure is detailed in:

Herrmann, J.B., Woll, K., & Dorst. A.G (accepted). Linguistic Metaphor Identification in German, in: Nacey, S., Dorst, A.G., Krennmayr, T., & W.G. Reijnierse (Hg.). MIPVU in Multiple Languages. Amsterdam: John Benjamins. (for an author's copy, please contact me at juliaberenike@gmail.com) 	

- A feature matrix which comprises several metadata and textual features, including readability values, part of speech and metaphor counts. 
- A simple R-Code for statistical Two spreadsheets with aggregated numbers for statistical analysis

## R-Code for Literary Research Question on Narrative Vividness 

The R-code stored in the repository was written for the quantitative case study presented in chapter 4.3 of my habilitation "Digital Literary Stylistics. Enhanced Humanities". It uses EAK as a representation of the "incipio" of narrative fiction at the turn from Realism to Modernism in German literary history. The incipio - the opening section - corresponds to a crucial stage in the interaction of readers/narrators/texts/authors, where the conditions are negotiated for establishing the narrative, or fictional, pact (Lausberg, 1990). It is thus a section of the text that is specifically interesting when looking for features of narrative vividness and imagery ("Anschaulichkeit"). Given metaphor's role in meaning transfer that normally renders more abstract phenomena in terms of more concrete ones, and more sensual ones, I explored metaphor as an indicator of vividness. To this aim, I examined the EAK (by means of the _chi-square test_) for statistically significant associations between the variables "text" and "relation to metaphor", as well as that between "word class" and "relation to metaphor". I found significant associations for both (by means of the R-code documented in this repository). The most interesting part, however, was the inspection of _standardized residuals_, which allows an exploration of which authors and, adding some literary backgrond knowldegde, which narrative sub genres cluster together. For example, the most renowned authors, such as Schnitzler and Kafka, use the fewest metaphors, but at the same time feature among the "late" texts in the corpus. This may indicate live cylces of writing style (fashion!) - or authorial idiosyncracy. Future research is needed to tease these factors apart. However, Kafka and Schnitzler are in good company: similarly low metaphor frequencies are exhibited by popular fiction openings by female authors (and one single male - Karl May) describing realistic worlds. Although low on metaphor, their texts are clearly high on a ceratin type of vividness and imagery. It is an interesting question how different types of vividness/imagery may be modeled, with  metaphorical and on-metaphorical concreteness, as a nonmetaphorical imagery appears to contrast with the type exhibited by texts high on metaphor, among which are modernistic descriptions of sentiment and industrial towns.


More can be read here: 

Herrmann, J. B. (2018). Anschaulichkeit messen. Eine quantitative Metaphernanalyse an deutschsprachigen Erzählanfängen zwischen 1880 und 1926. In T. Köppe & R. Singer (Eds.), Show, don’t tell: Konzepte und Strategien anschaulichen Erzählens. Bielefeld: Aisthesis. 167-212. (for an author's copy, or if you have questions, please contact me at juliaberenike@gmail.com).

## Note
I thank my former student assistants - Markus Paluch's hard work with scripting and stats has been a great support, and Lisa Hannemann did a wonderful job at coding metaphor.
