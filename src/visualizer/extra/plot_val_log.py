import sys
import os
import matplotlib.pyplot as plt
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
        

def plot_chart_multi_threshold(path_to_png, path_to_log_list):
    for path_to_log in path_to_log_list:
        [thresh, mean] = get_mean_accuracies(path_to_log)

        [thresh50, thresh70, thresh90] = separate_three(thresh)
        [mean50, mean70, mean90] = separate_three(mean)
        
        #number of evaluations
  
        
        N = len(mean50)

        
        ind = np.arange(N)
        
        #width of the bars
        
        fig, ax = plt.subplots()
        rects1 = ax.plot(ind,mean50,color='r')
        rects2 = ax.plot(ind,mean70,color='b')
        rects3 = ax.plot(ind,mean90,color='g')
        
        ax.set_ylabel('Means')
        ax.set_xlabel('Iterations')
        ax.set_title('Means of average IoU on validation set')
        ax.set_xticks(ind + 1)
        ax.set_xticklabels(('50K', '100K', '150K', '200K', '250K','300K', '350K', '400K', '450K', '500K'))
	
	ticks = np.arange(0,0.7,0.05)
	ax.set_yticks(ticks)	
	ax.grid()        
	plt.savefig(path_to_png)
        plt.show()
        
'''
        data_file = get_data_file(chart_type, path_to_log)
        x_axis_field, y_axis_field = get_field_descriptions(chart_type)
        x, y = get_field_indices(x_axis_field, y_axis_field)
        data = load_data(data_file, x, y)
        ## TODO: more systematic color cycle for lines
        color = [random.random(), random.random(), random.random()]
        label = get_data_label(path_to_log)
        linewidth = 0.75
        ## If there too many datapoints, do not use marker.
##        use_marker = False
        use_marker = True
        if not use_marker:
            plt.plot(data[0], data[1], label = label, color = color,
                     linewidth = linewidth)
        else:
            ok = False
            ## Some markers throw ValueError: Unrecognized marker style
            while not ok:
                try:
                    marker = random_marker()
                    plt.plot(data[0], data[1], label = label, color = color,
                             marker = marker, linewidth = linewidth)
                    ok = True
                except:
                    pass
    legend_loc = get_legend_loc(chart_type)
    plt.legend(loc = legend_loc, ncol = 1) # ajust ncol to fit the space
    plt.title(get_chart_type_description(chart_type))
    plt.xlabel(x_axis_field)
    plt.ylabel(y_axis_field)
    plt.savefig(path_to_png)
    plt.show()
'''



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
        path_to_logs = sys.argv[2:]
        for path_to_log in path_to_logs:
            if not os.path.exists(path_to_log):
                print 'Path does not exist: %s' % path_to_log
                sys.exit()
            if not path_to_log.endswith(get_log_file_suffix()):
                print 'Log file must end in %s.' % get_log_file_suffix()
                print_help()
        ## plot_chart accpets multiple path_to_logs
        plot_chart_multi_threshold(path_to_png, path_to_logs)
