from util import *
import numpy as np
import os
import os.path
import skimage.io
from vlg.util.parfun import *

from heatmap import *
from network import *
from configuration import *
from imgsegmentation import *
from heatextractor import *
from htmlreport import *
import exp05

if __name__ == "__main__":
    # load configurations and parameters  
    conf = Configuration()
    params = exp05.Params()
    # experiment name
    params.exp_name = 'exp05_01'
    params.exp_name_input = 'exp03_01' # take results from here
    # Select segmentations
    params.subset_par = True # k = 100 if true. k = {50,100} otherwise
    params.start_lv = 2 # ignore levels < start_lv (small segments)
    params.num_lv = 4 # number of considered levels
    # default Configuration, image and label files
    params.conf = conf
    # method for calculating the confidence
    params.heatextractor_confidence_tech = 'full_obf_positive'
    # normalize the confidence by area?
    params.heatextractor_area_normalization = True
    # input/output directory
    params.output_dir = conf.experiments_output_directory \
                        + '/' + params.exp_name
    params.input_dir = conf.experiments_output_directory \
                        + '/' + params.exp_name_input 
    # parallelize the script on Anthill?
    params.run_on_anthill = False
    # Set jobname in case the process stop or crush
    params.job_name = None # set to None if you do not want to resume things
    params.task = 51 # specify task to debug
    logging.info('Started')
    # RUN THE EXPERIMENT
    exp05.run_exp(params)
