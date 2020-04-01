# currencyworth

Currencyworth calculates what worth a currency will have in another country, using purchasing power parity(PPP). 

# How to set it up?

I. Import data from the sqldump with:

``` bash
mysql -u username -p cr < pdata.sql
``` 
II. Make appropriate changes in the settings.py. 

III. Run with:

``` bash
python manage.py runserver
``` 
