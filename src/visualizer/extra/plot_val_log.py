import sys
import os
import matplotlib.pyplot as plt
import matplotlib.markers as mrk
import numpy as np

def get_mean_accuracies(path_to_log):
    lines = find_mean_accuracy_lines(path_to_log)
    [thresh, mean] = extract_thresh_mean(lines)
    return [thresh, mean]
    
def extract_thresh_mean(lines):
    # get rid of \n end at the end of each line
    lines = [line.rstrip() for line in lines]
    thresholds =[] 
    means = []
    for line in lines:
        #note, we are splitting using both comma and space
        [t, m] = line.split(", ")
        
        threshold=t[t.find(' ')+1:]
        mean=m[m.find(' ')+1:]
        

        
        thresholds.append(float(threshold))
        means.append(float(mean))
    
    return thresholds, means
    
        
    
def find_mean_accuracy_lines(path_to_log):
    keyword = "Thresh: "
    try:
        f=open(path_to_log)
    except IOError:
        print "Could not open log file"
        sys.exit()    
    
    lines = []
    for line in f.readlines():
        if line.startswith(keyword):
            lines.append(line)
            
    
    return lines


def get_log_file_suffix():
    return '.log'
    
def separate_three(array):
    arr1 = []
    arr2 = []
    arr3 = []
    
    for i in range(0,len(array),3):
        arr1.append(array[i])
        arr2.append(array[i+1])
        arr3.append(array[i+2])
        
    return arr1,arr2,arr3
        

def plot_chart_multi_threshold(path_to_png, path_to_log_list,legend_labels):
    fig, ax = plt.subplots()
    markers = ('o', 'v', '^', '<', '>', '8', 's', 'p', '*', 'h', 'H', 'D', 'd')
    lineStyles = [ '-', '--', ':']
    for i in range(len(path_to_log_list)):
        path_to_log=path_to_log_list[i]
        linestyle = lineStyles[i]
        marker = markers[i]
        [thresh, mean] = get_mean_accuracies(path_to_log)

        [thresh50, thresh70, thresh90] = separate_three(thresh)
        [mean50, mean70, mean90] = separate_three(mean)
        
        #number of evaluations
  
        
        N = len(mean50)

        
        ind = np.arange(N)
        
        #width of the bars
        
        print "linestyle = %s"%linestyle
        rects1 = ax.plot(ind,mean50,marker,color='r',linestyle=linestyle,label=legend_labels[i])
        rects2 = ax.plot(ind,mean70,marker,color='b',linestyle=linestyle)
        rects3 = ax.plot(ind,mean90,marker,color='g',linestyle=linestyle)
        
        ax.set_ylabel('Means')
        ax.set_xlabel('Iterations')
        ax.set_title('Means of average IoU on validation set')
        ax.set_xticks(ind)
#        #ticks = ['50K', '100K', '150K', '200K', '250K','300K', '350K', '400K', '450K', '500K']
        ticks = []
        for i in range(1,N+1):
            ticks.append(str(i*50)+'K')
    ax.set_xticklabels(ticks)    
    ticks = np.arange(0,0.7,0.05)
    ax.set_yticks(ticks)    
    ax.grid()   
    ax.legend(loc='best', fancybox=True, framealpha=0.5)     
    plt.savefig(path_to_png)
    plt.show()
        
def plot_chart_single_threshold(path_to_png, path_to_log_list,legend_labels):
    fig, ax = plt.subplots()
    markers = ('o', 'v', '^', '<', '>', '8', 's', 'p', '*', 'h', 'H', 'D', 'd')
    lineStyles = [ '-', '--', ':','-.','-', '--', ':','-.']
    maxN=0
    for i in range(len(path_to_log_list)):
        path_to_log=path_to_log_list[i]
        linestyle = lineStyles[i]
        marker = markers[i]
        [thresh, mean] = get_mean_accuracies(path_to_log)

        [thresh50, thresh70, thresh90] = separate_three(thresh)
        [mean50, mean70, mean90] = separate_three(mean)
        
        #number of evaluations
  
        
        N = len(mean50)

        if N>maxN:
			maxN=N
        print "N = %d, maxN = %d"%(N,maxN)      

        ind = np.arange(N)     
        #width of the bars
        
        print "linestyle = %s"%linestyle
        rects1 = ax.plot(ind,mean50,marker,linestyle=linestyle,label=legend_labels[i])
        #rects2 = ax.plot(ind,mean70,marker,color='b',linestyle=linestyle)
        #rects3 = ax.plot(ind,mean90,marker,color='g',linestyle=linestyle)
    
	   
    ax.set_ylabel('Means')
    ax.set_xlabel('Iterations')
    ax.set_title('Means of average IoU on validation set')
    ax.set_xticks(np.arange(maxN))

    ticks = []
    for i in range(1,maxN+1):
    	ticks.append(str(i*50)+'K')
    ax.set_xticklabels(ticks)    
    ticks = np.arange(0,0.7,0.05)
    ax.set_yticks(ticks)    
    ax.grid()   
    ax.legend(loc='best', fancybox=True, framealpha=0.5)     
    plt.savefig(path_to_png)
    plt.show()



def print_help():
    print """This script serves to plot validation means for the purpose of visualization for GOTURN_REMEMBER.
Usage:
    ./plot_val_log.py  /where/to/save.png /path/to/val.log 
Notes:
    1. Script will draw a hist of means for the model.
""" 
    
    sys.exit()
    
    
if __name__ == '__main__':
    if len(sys.argv) < 3:
        print_help()
    else:
        path_to_png = sys.argv[1]
        if not path_to_png.endswith('.png'):
            print 'Path must ends with png' % path_to_png
            sys.exit()
        path_to_logs = sys.argv[2].split(',')
        legend_labels =sys.argv[3].split(',')

        print "len of path to logs = ", len(path_to_logs)
        for path_to_log in path_to_logs:
            if not os.path.exists(path_to_log):
                print 'Path does not exist: %s' % path_to_log
                sys.exit()
            if not path_to_log.endswith(get_log_file_suffix()):
                print 'Log file must end in %s.' % get_log_file_suffix()
                print_help()
        ## plot_chart accpets multiple path_to_logs
        plot_chart_single_threshold(path_to_png, path_to_logs,legend_labels)
