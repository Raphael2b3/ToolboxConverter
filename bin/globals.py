import getopt
import os

"""
args: 
#python toolbox2csv.py -c -e "excel.xlsx" -f V14 -p --as-one --reload --ignore-numbers "/resource/AvestToolbox/"
"""


class Paths:
    root = r"../../"
    # path to get the resources from
    toolbox_folder = fr"{root}/resource/AvestToolbox"
    output_folder = fr"{root}/output/"
    # the path to the generated log.csv outputfile
    log_file = rf"{root}/output/_log.csv"  # ../output/_log.csv
    annotation_file = fr"{root}/output/_annotation.csv"  # _annotation.csv
    excel_export = False
    filter = rf"{root}/resource/AvestToolbox/filter.csv"


class Is:
    reexport = in_one_file = do_check = do_filter = do_reload = ignore_numbers = False


def init_globals_from_args(argv):
    opts, args = getopt.getopt(argv, "ce:f:p", ["as-one", "reload", "ignore-numbers"])
    # c: check, e: excel, f: filter, p: print,

    for arg in args:
        if arg.lower() == "avest":
            Paths.toolbox_folder = r"../resource/AvestToolbox"
        elif os.path.isdir(arg):
            Paths.toolbox_folder = arg
        else:
            print("Kein Pfad vorgegeben. Der voreingestellte Pfad wird verwendet.")

    Paths.output_folder = r"../output"
    Paths.log_file = Paths.output_folder + "_log.csv"
    Paths.annotation_file = Paths.output_folder + "_annotation.csv"

    for opt, arg in opts:
        if opt == "-p":
            Is.reexport = True
        elif opt == "--as-one":
            Is.in_one_file = True
        elif opt == "--ignore-numbers":
            Is.ignore_numbers = True
        elif opt == "-e":
            Paths.excel_export = os.path.join(Paths.output_folder, arg)  #
        elif opt == "-c":
            Is.do_check = True
        elif opt == "-f":
            Is.do_filter = [arg.strip("\"")]  # TODO unwrap later
        elif opt == "--reload":
            Is.do_reload = True  # Paths.toolbox_folder == Paths.mcp TODO Ask Johannes what is mcp
    # original: do_reload = any([opt == "--reload" for opt, arg in opts]) if toolbox_folder_path == mcp_path else False

    Is.in_one_file = Is.in_one_file and Is.reexport

    Paths.filter = os.path.join(Paths.toolbox_folder, "filter.csv")
    if not os.path.isfile(Paths.filter):
        Paths.filter = False

    debug_state()


def debug_state():
    if Is.reexport:
        if Is.in_one_file:
            print("\nDie Toolbox-Dateien werden zusammengeführt und exportiert.")
        else:
            print("\nDie Toolbox-Dateien werden exportiert.")
    else:
        print("\nNur csv-Export. Für Toolbox-Export, rufe die Funktion mit '-p' auf.")

    if Paths.excel_export:
        print("Das Korpus wird als Excel-Datei exportiert.")
    else:
        print("Für Excel-Export, rufe die Funktion mit '-e' auf.")

    if Is.do_check:
        print("Die Annotationen werden anhand der Wörterbücher geprüft. (Dauert möglicherweise sehr lange.)")
    else:
        print("Für Überprüfung der Annotationen, rufe die Funktion mit '-c' auf.")

    if Paths.filter:
        if Is.do_filter:
            print("Daten werden nach folgenden Filtern gefiltert:", *Is.do_filter)
            print("Achtung, durch die Einschränkung der gelesenen Daten wird werden alle Exporte gefiltert!")

    if Is.do_reload:
        print("[WARNING] Do Reload is set, but not implemented yet, contact Raphael2b3 on GitHub")
        """McP_xml_path = "D:\\git\\korrektur"
        print("Lade xml-Dateien von", McP_xml_path)
        for xml_file in [os.path.join(McP_xml_path, file) for file in os.listdir(McP_xml_path) if file[-4:] == ".xml"]:
            print("loading", xml_file)
            read_original(xml_file)"""
