# Part III: Data-Driven Literary Studies.
This part of my habilitation addresses the role of digital corpora as the precondition for non-linear modes of literary reading. It sketches out a digitally enhanced literary studies with regard to modeling, building, and annotating digital corpora. 

Responding to the need for externalization of procedure, I detail practical and conceptual criteria to be observed which are elucidated by reference to two corpora: 
- A comprehensive corpus, KOLIMO (KOrpus der LIterarischen MOderne - Corpus of Literary Moderism, see https://kolimo.uni-goettingen.de/index.htm and https://gitlab.gwdg.de/kolimo/exist-app)
- A specialized and intensively annotated corpus, the EAK (Erzählanfangskorpus - Corpus of narrative openings; see spreadsheets under <code> in this repository). 
  
## Erzählanfangskorpus
The EAK is a sub sample of KOLIMO, comprising 35 opening sections (ca. 600 word tokens each) of German narrative prose between 1850 and 1930 (extracted from the German Text Archive/DTA, http://www.deutschestextarchiv.de/download, TCF-Version 11 May 2016). In order to facilitate non-linear reading in the shape of a corpus-stylistic study of vividness, these fragments were manually coded for metaphorical language.

- This repository holds the EAK represented as a spreadsheet (version 3/19). The spreadsheet identifies Texts by IDs, and comprises tokens, lemmata, as well as codes for part of speech (STTS tag set, https://www.ims.uni-stuttgart.de/forschung/ressourcen/lexika/TagSets/stts-table.html, included with the DTA TCF file) and for relation to metaphor. 
- Metaphor was coded by means of the MIPVU manual for German. The procedure is detailed in:

Herrmann, J.B., Woll, K., & Dorst. A.G (accepted). Linguistic Metaphor Identification in German, in: Nacey, S., Dorst, A.G., Krennmayr, T., & W.G. Reijnierse (Hg.). MIPVU in Multiple Languages. Amsterdam: John Benjamins. (for an author's copy, please contact me at juliaberenike@gmail.com) 			

## R-Code for Literary Research Question on Narrative Vividness 
The R-code was written for the quantitative case study presented in chapter 4.3 that uses EAK as a representation of the "incipio" of narrative fiction at the turn from Realism to Modernism in German fiction. The incipio - the opening section - corresponds to a crucial stage in the interaction of readers/narrators/texts/authors, where the conditions are negotiated for the narrative, or fictional, pact (Lausberg, 1990). It is thus a section of the text that is specifically interesting when looking for features of narrative vividness ("Anschaulichkeit"). Given metaphor's role for meaning transfer that as a rule works renders more abstract phenomena in terms of more concrete, and sensual ones, I explored metaphor as an indicator of vividness. To this aim, I examined the EAK for a statistical association, by means of the _chi-square test_ between the variables text and relation to metaphor, as well as that of word class and relation to metaphor. I found significant associations for both. The most interesting part, however, was the inspection of _standardized residuals_, which allow an exploration of which authors and which narrative sub genres cluster together. I found that, for example, the most renowned authors, such as Schnitzler and Kafka, use the fewest metaphors, but at the same time are also among the "late" texts in the corpus. But they are in good company - popular fiction by women describing realistic worlds have similar frequencies. 
- This repository holds the feature matrix including the raw and relative metaphor frequencies (obtained from EAK version 09/17), as well as raw frequencies for word class, as well as Flesch values.

More can be read here: 

Herrmann, J. B. (2018). Anschaulichkeit messen. Eine quantitative Metaphernanalyse an deutschsprachigen Erzählanfängen zwischen 1880 und 1926. In T. Köppe & R. Singer (Eds.), Show, don’t tell: Konzepte und Strategien anschaulichen Erzählens. Bielefeld: Aisthesis. 167-212. (for an author's copy, or if you have questions, please contact me at juliaberenike@gmail.com).
