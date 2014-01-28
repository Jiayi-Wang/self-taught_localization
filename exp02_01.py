import numpy as np
import os
import os.path
import skimage.io
from vlg.util.parfun import *

from heatmap import *
from network import *
from configuration import *
#from imgsegmentation import *
from heatextractor import *
from htmlreport import *
from util import *
import exp02

class Params:
    # experiment name
    exp_name = 'exp02_01'
    # number of classes to elaborate
    num_classes = 2
    # number of images per class to elaborate
    num_images_per_class = 3
    # default Configuration, image and label files
    conf = Configuration()
    images_file = conf.ilsvrc2012_val_images
    labels_file = conf.ilsvrc2012_val_labels
    # Felzenswalb segmentation params: (scale, sigma, min)
    box_params = [(20, 5), \
                  (40, 5), \
		  (60, 5), \
		  (20, 10), \
                  (40, 10), \
                  (60, 10), ]
    # we first resize each image to this size, if bigger 
    fix_sz = 300
    # the maximum size of an image in the html files
    html_max_img_size = 150
    # method for calculating the confidence
    heatextractor_confidence_tech = 'full_obf_positive'
    # normalize the confidence by area?
    heatextractor_area_normalization = False
    # output directory
    output_dir = conf.experiments_output_directory + '/' + exp_name
    # parallelize the script on Anthill?
    run_on_anthill = False
    # visualize heatmaps?
    visualize_heatmaps = True


if __name__ == "__main__":
    params = Params()
    exp02.run_exp(params)
