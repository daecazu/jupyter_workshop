import sys
import os


if __name__ == '__main__':

    etl_path = sys.argv[1]
    print(f'Converting {etl_path} notebook to python ')
    os.system(f'jupyter nbconvert --to python {etl_path}')
