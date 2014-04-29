import sys
import time

import progressbar

class ProgressBar:
    """ Simple text-based ProgressBar """

    def __init__(self, max_val):
        widgets = [progressbar.Percentage(), ' ', \
                   progressbar.Bar(), ' ', \
                   progressbar.Counter(), ' ', \
                   progressbar.Timer(), ' ', \
                   progressbar.ETA()]        
        self.max_val = max_val
        self.iter = 0
        self.progress = progressbar.ProgressBar( widgets=widgets, \
                            maxval=max_val, redirect_stdout=True)
        self.progress.start()

    def next(self, n_steps=1):
        self.iter += 1
        self.progress.update(self.iter)
    
    def update(self, val):
        self.progress.update(val)

