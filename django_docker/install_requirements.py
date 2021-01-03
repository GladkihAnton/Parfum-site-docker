import os

REQUIREMENT_FILE_PATH = os.environ['REQUIREMENT_FILE_PATH']

os.system('pip install -r {}'.format(REQUIREMENT_FILE_PATH))
