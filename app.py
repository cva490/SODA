import os
from soda.scan import Scan
var_env_name=os.environ.get('ENV_NAME','Siva')
print('Environment name is:'+ var_env_name)
exec(open('checkfile.py').read())