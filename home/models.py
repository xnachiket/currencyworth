from django.db import connections	
from django.db import models
	

class pp(models.Model):
	Name=models.CharField(max_length=40)
	Code=models.CharField(max_length=20)
	Value=models.CharField(max_length=20)
	Currency=models.CharField(max_length=20)
	class Meta:
		db_table="home_xyz"

#model madhye table cha data meta ne ghusto 
#te model nantar 
	def __str__(self):
		return self.Name