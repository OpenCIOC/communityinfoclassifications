## CIOC Open Community Information Classifications ##

This project includes the summary of contributions from the developers and users of [CIOC Software](www.cioc.ca). By providing these values for anyone to use, we (the original content creators) hope to make it easier to find common ways to describe and share Community Service records.

An additional project is available for lists used to help describing Volunteer Opportunity records. It is available at https://github.com/OpenCIOC/volunteerclassifications

### File Formats ###

All lists are provided in CSV (comma-seperated value) files, including a header row which describes the fields. Most files have a *Code* field followed by one or more *Name* fields which are denoted in brackets by the language-specific *culture code* such as en-CA (Canadian English) or fr-CA (Canadian French).

Want to use this project, but wish another file format was available? We're happy to consider releasing the data in anther format such (e.g. XML) if there is a demand. Just ask!

### Types of Data Available ###

 - **Contact Honorific** (contacthonorific.csv) provides a list of common titles or honorifics (e.g. Mrs., Miss, Mr., Judge, Officer, Captain, Father)
 - **Contact Phone Type** (contactphonetype.csv) lists types of phone numbers (e.g. cell, work, residence, pager)
 - **Fee Types** (feetype.csv) lists common types of fees that may be associated with a program/service (e.g. Membership, Program, Admission)
 - **Funding** (funding.csv) lists major types of funders by general category
 - **Languages** (language.csv) lists languages of service

This list does not include a Taxonomy or Thesaurus at this time, since CIOC Software users generally leveraged existing classification systems and/or built-special purposes ones for their own use. Classifications commonly used in the Community Information and Referral sector and/or with CIOC Software include the [211 Taxonomy](https://211taxonomy.org/), the North American Industry Classification System ([NAICS](http://www.statcan.gc.ca/eng/subjects/standard/naics/2012/index)), the [Inform Ontario](http://www.informontario.on.ca) Thesaurus, and [Open Eligibility](https://github.com/auntbertha/openeligibility).

Note that it is expected that some of these data points require elaboration within any target system that uses them. For example, there is likely to be more information required about Accessibility, Fees, and Languages than what can be covered by a pre-defined checklist.

### Languages and Translations ###

The lists are currently available in Canadian English and Canadian French. This project welcomes the contribution of translations to other languages or language variants. The txt directory contains text versions of the names of items, used to manage the [translation project on Transifex](https://www.transifex.com/open-cioc/cioc-community-info-classifications). Contributions of translations in other languages are welcome - please use the Transifex project to contribute.

### License and Attribution ###

These lists are licensed under the Creative Commons Zero license (https://creativecommons.org/publicdomain/zero/1.0/). Attribution (without the implication of endorsement) is appreciated, so that others may benefit from this project.

If you choose to expand or add to this data, **please consider contributing it back to the project** so that everyone can benefit.