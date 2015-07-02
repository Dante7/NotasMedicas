#encoding:utf-8

from dajax.core import Dajax
import json
from dajaxice.decorators import dajaxice_register

#Dajax functions
@dajaxice_register
def Concat(request, a, b):
    dajax = Dajax()
    result = a + b
    dajax.assign('#result','value',str(result))
    return dajax.json()

#Dajaxice functions
@dajaxice_register
def sayhello(request):
    return json.dumps({'message':'Hello World'})