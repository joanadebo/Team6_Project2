#Medaling in the Olympics
#Team 6
##Team Do We Have To presents their project 2 focused on the outcomes for the Olympics over the past 120 years.

Every four years we rally with our compatriots to support our proud nations as they showcase their skills on the international mantle during the Olympic games. The Games were initially held in the Peloponnese of ancient Greece about 3,000 years ago. Olympia staged sporting competitions every four years. After Pierre de Coubertin's idea to revive the Olympic Games was announced in 1894, the first Games of the modern era were staged in 1896. In 1900, women took part in competition for the first time in Paris. 22 female competitors out of a total of 997 took part in five sports: tennis, sailing, croquet, equestrian, and golf.

Here we will be analyzing olympic outcomes and merging datasets from the summer and winter olympic games according to country and competitors. ETL (Extract, Transform, and Load) is used to read data from multiple sources, clean and reorganize the data’s structure, and storing it into a database. By creating a database in pgAdmin 4, and then create the following three tables within the database:

● An event table that contains the columns id, sport, discipline, name. 

● An olympic_event table that contains the columns id, city, season, year, event_id, athlete_name, athlete_country_name, country_ioc, medal.

● A country table that contains the columns ioc_code, iso_code, and name.

Making sure we identify and assign primary keys as event_id and ioc_code to be able to link the tables, as Pandas will not be able to do so. In Jupyter Notebook, we performed all ETL steps.

Extraction: Puting each CSV (i.e. summer olympics, winter olympics, athlete event, and IOC Country Codes) into a Pandas DataFrame.

Transformation: Essential columns that were needed to communicate our findings we exported into a new DataFrame. Necessary columns were renamed to fit the tables created in the database. Duplicates were then removed and the index was set to the previously created primary key. Connections were made to the databases and its connection success to the database was confirmed by seeing if tables have been created.

Loading: Once this was done, we confirmed that we performed a successful load by querying the database once we had joined the tables, with our preferred selected ids from the tables on sport, discipline, and event columns.
