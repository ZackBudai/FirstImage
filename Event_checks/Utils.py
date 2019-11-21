import re
import subprocess

class Utils:

    @staticmethod
    def string_exists(targetFile, searchString):
        try:
            for line in open(targetFile, 'r').readlines():
                if re.search(searchString, line):
                    return True
                else:
                    continue
            return False
        except:
            return False

    @staticmethod
    def string_exists_in_dir(targetDir, searchString):
        command = 'egrep -r "' + searchString + '" ' + targetDir
        cmd = subprocess.Popen(command, stdout=subprocess.PIPE, shell=True)
        if cmd.stdout.read() != b'':
            return True
        else:
            return False          
    
    @staticmethod
    def run_command(command):
        command = command.split(' ')
        print('command split:', command)
        cmd = subprocess.Popen(command, stdout=subprocess.PIPE)
        return cmd.stdout.read()

    @staticmethod
    def package_installed(package):
        if package in str(Utils.run_command('dpkg --list')):
            return True
        else:
            return False

    @staticmethod
    def service_running(service):
        check_service = 'sudo systemctl status ' + service
        output = str(Utils.run_command(check_service))
        if ' active ' in output:
            return True
        else:
            return False

    @staticmethod
    def process_running(process):
        check_process = 'sudo pgrep ' + process
        output = Utils.run_command(check_process)
        if output.decode() == "":
            return True
        else:
            return False

    @staticmethod
    def user_in_group(user, group):
        command = "grep " + group + " /etc/group"
        output = Utils.run_command(command).decode().rstrip().split(":")
        if any(user in oyeah for oyeah in output):
            return True
        else:
            return False

    @staticmethod
    def check_perm(filename):
        command = 'stat -c %a ' + filename
        output = Utils.run_command(command).decode().rstrip()
        return output

    @staticmethod
    def check_kernel():
        command = 'uname -r'
        output = Utils.run_command(command).decode().rstrip()
        return output
    
    @staticmethod
    def file_exists(path):
        if subprocess.call("test -e '{}'".format(path), shell=True):
            return False
        else:
            return True
    
    @staticmethod
    def package_updated(package, initialversion):
        command = 'apt-cache policy ' + package
        cmd = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
        installed = cmd.stdout.read().decode('utf-8').split('\n')[1]
        if initialversion not in installed:
            return False
        else:
            return True
 