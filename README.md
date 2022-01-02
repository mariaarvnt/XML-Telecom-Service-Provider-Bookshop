## Εισαγωγή
Το συγκεκριμένο project αφορά το εργαστήριο του μαθήματος «Δομημένη Αναπαράσταση Πληροφοριών» του τμήματος Ψηφιακών Συστημάτων του Πανεπιστημίου Πειραιώς και πραγματοποιήθηκε ως η εξαμηνιαία εργασία του μαθήματος. Το μάθημα αφορά στην αναπαράσταση πληροφοριών με χρήση της mark-up language XML και την τροποποίηση των δεδομένων με χρήση XSLT.

##1
Assume that you should specify a structure for xml documents that present a list of the available programs of a telecommunications provider, but also any offers with combined programs (list of tenders which may also be empty) that can be made by the telecommunications provider for a combination of specific programs in specific time periods (e.g. combination of mobile telephony, fixed telephony, internet and pay-TV).This structure should be fulfils the following requirements:
• The telecommunications provider (root element) will have as information the its name and the year of its commencement of operation (year of its establishment). The this information should be presented using mandatory Properties.
• The telecommunications provider will include a list of programs and a list of offers of combined programs
• The list of programs of the telecommunications provider (regardless of the category to which each program belongs – the categories will mentioned below) will consist of more than one Programs.
• The list of offers of combined programs of telecommunications provider will consist of zero to more offers combined programs.
• A program provided by the telecommunications provider will have an id, based on which it can be uniquely identified (compulsory status).
• A program will be described in turn, by the following elements:
o a plan name (e.g. Mobile Start 1, Mobile Plus 1, Mobile Plus 2, Home Start 1, TV1, etc.), 
o zero or one secondary category of mobile telephony (if this is the mobile telephony category),
o zero or one secondary fixed telephony category (if in the category of fixed telephony and internet),
o a package with the services offered by the program,
o an indication of the duration (commitment) of his contract program,
o zero or one of the following three elements: (i) an element that indicates the availability of a new SIM card or (ii) an item indicating availability of a new router or (iii) an indication of availability new decoder,
o a list of the benefits offered by each program,
o a list of program availability prices, and
o zero or a list of additional charges that may have program.
• In the item with the name of the program there will be a mandatory one property that will indicate the main category of the program. The available values that this property can get will be the following:(i) mobile, (ii) home_teleph_and_internet, (iii) TV and the default value of this property will be the "mobile" value.Also, in the name of the program there will be another mandatory property that will point to a 5-character code (tariff) in which will belong to each program.
• The mobile subcategory will be an empty item with the obligatory information of the price of this secondarycategory, which may be one of: "Contract","Card program" and "Credit card".
• The landline subcategory will be an empty item with the obligatory information of the price of this secondary category, which can be one of: "GigaFiber", "VDSL" and "ADSL".
• The package with the offered services of the program will includes elements (optional) that will indicate the services that offers the program depending on the main and secondary category to which this program belongs. That is, this package will includes:
o one or no item to be reported in the data (data -MB / GB-, mobile plan service),
o one or no item to refer to mobile calls of the same provider (in minutes, program service mobile telephony),
o one or no item to be mentioned in calls to fixed of the same provider (in minutes of talk, service mobile program),
o one or no item to refer to calls to others national landlines (in minutes, mobile application service telephony),
o one or no item to be mentioned in calls to nationals fixed (in minutes, fixed program service telephony and internet),
o one or no item to be mentioned in calls to nationals mobile (in minutes, fixed program service telephony and internet),
o one or no item to be reported in the balance for any use (in minutes, program service mobile telephony - card program -),
o one or no item to refer to international calls (in minutes of talk, mobile and fixed program service with internet telephony),
o one or no item to indicate the number of messages to the network of the same provider (in a number of SMS, mobile plan service),
o one or no item to indicate the number of messages to national networks (in number of SMS, service mobile program),
o one or no item to indicate the number of messages to international networks (in many SMS, service mobile program),
o one or no blank item to be reported on television channels (TV program service), 
o one or no element that will refer to its speed internet (in Mbps, fixed program service and internettelephony).
• All the above items of the package with the ones offered program services will have character data outside as valuesfrom (a) the item with the TV channels that will be empty and (b) the item with international calls consisting of mixed content.
• The item with international calls should include (i) as a price (character data) the number of minutes of time provided free from the respective program and (ii) one or more items that will show the countries in which these are allowed to be consumed minutes of international calls. Each element of the country will include the country name as value (character data) and indication of whether these minutes can be consumed on "mobile", "fixed" or even on two of this country, ie "mobile_and_stable". This suggestion should to be declared as a mandatory property in the country element with distinct values, the three above values, and as the default value, the value "Fixed".
• The indication of the duration (commitment) of his contract program will accept character data as values (eg 24 months).
• The item that indicates the availability of a new SIM card will have a property which will take the value "yes" or "no" (and with the default value the price "No") and will indicate if the program provides the customer with a new SIM card. Only if a new SIM card is available (value "yes" to the above property), then in the element of the availability of a new SIM card should another property is added to indicate the cost of disposal of the new SIM card.
• The data that indicate the availability of a new router and a new one decoder will include character data as well as one mandatory property with the value of the rooter model or decoder (depending on the item).
• The blank element with TV channels found in the package with offered program services should include mandatory as information (a) the number of channels offered in the respective program, (b) the indication of whether it includes the package with the children's channels, (c) the indication of whether it includes the package with sports channels and (d) an indication of whether it includes a movie library. In all four cases the possible values are "yes" and "no". In In the case of the movie library, the default value is "no". The list with The benefits offered by each program can includes zero or more benefits (eg fixed account, unique offers 1 + 1 and discounts at favorite companies, 24 hours support, etc.). The list of benefits will also include information on the number of these benefits included in the list (information as property). 
• The list of additional fees that a program may have may includes: zero or one item for activation fees and zero or an item for installation fees. Each of these two elements
accepts character data as values.
• The list of program prices for each category customer (new customer, old customer, company) will include details with the individual values for each of the three specific categories customer. The list may or may not include prices per customer category (eg the list may be empty or it may contain its values program, for one or two or all three categories of client). THE customer category (permissible prices: new customer, old customer, company) declared as a mandatory property in the individual program values displayed in the list. The individual values of the program (in the list values) will be items that will take character data as values. • One or more programs of the telecommunications provider may belong to a financial offer that can be made by telecommunications provider for specific time periods. The Bids should appear in a mandatory list offers and can be either multiple or zero (not available that is, no offer in the list). • In each item related to the "offer" (of the list of offers of the telecommunications provider) must be declared (with reference) the codes of the programs of the telecommunication provider participating in this offer, as they will the price of the specific offer for the reported programs (use of properties). You should also must be declared, using properties, the VAT price and the indication for the customer category (eg if the offer is available for young people customers). 
• Each bid in the bid list will include one in turn blank item in which the information about offered period of validity of the offer ("from" and "to") and an item that will indicate (character data) the time commitment of the contract for the offer of these combined programs (eg 12 months contract - Attention: no use of property). In addition, it can contain zero or more data indicating some gifts that can be provided with this combination offer programs (eg gift of connection fees or gift of an I-PHONE 5, etc.). • In the gift item that may be present in an offer, optionally there may be a property that captures the category of the gift (eg if the gift is I-PHONE 5, then the category of the gift will receive the price "Device"). 
• It is suggested to use English terms in the data and prices of properties.



