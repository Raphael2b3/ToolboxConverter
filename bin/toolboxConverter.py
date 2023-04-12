import re

marker_stack = []


def decode_toolbox_map(string, marker, markers):


    def next_line(_string, _marker):
        marker_stack.append(_marker)

        def get_line(__string, __marker):
            __string = re.sub("\n(?!\\\\)", " ", __string)

            search_reg = "\\\\({}) ?(.+?\n)?"
            if re.search(search_reg.format(__marker), __string):
                this_line = re.search(search_reg.format(__marker), __string)
                this_annotation = this_line.group(2)

                return {__marker: this_annotation}
            else:
                return {__marker: ""}

        if "mkrFollowingThis" in markers[_marker]:
            new_marker = markers[_marker]["mkrFollowingThis"]

            # in manchen Dateien ist als following auf den Übersetzungsmarker wieder ref eingegeben, um die Datei leicht zu erweitern. Das führt zu einem unendlichen Loop, der hier unterbrochen wird.
            if new_marker in marker_stack:
                marker_stack.pop()
                return get_line(_string, _marker)

        else:  # der letzte Marker ist die Übersetzung
            marker_stack.pop()
            return get_line(_string, _marker)

        nnn = next_line(_string, new_marker)
        ttt = get_line(_string, _marker)

        ttt.update(nnn)

        marker_stack.pop()
        return ttt

    def next_block(_string, _marker):
        marker_stack.append(_marker)

        if _marker in _string:
            this_line = re.search("\\\\({}) ?(.+?)?\n".format(_marker), _string)

            this_annotation = this_line.group(2)
        else:
            marker_stack.pop()
            return

        if "mkrFollowingThis" in markers[_marker]:
            new_marker = markers[_marker]["mkrFollowingThis"]

            if new_marker in marker_stack:
                input(marker_stack)
        else:
            # print(marker, this_annotation, "$")
            marker_stack.pop()
            return

        if not "jumps" in markers[_marker]:  # ich verwende das vorhandensein von Lookup-Funktionen als Indikator dafür, dass wir es nicht mit einem Id- oder Record-Marker zu tun haben, sondern mit einem zu interlinearisierenden Eintrag. Das setzt voraus, dass auch in den Datenbanken solche Lookup-Funktionen beim höchsten Eintrag angesetzt werden, ansonsten werden die Wörterbucheinträge nicht interlinearisiert dargestellt
            aaa = {_marker: {}}

            new_subset = re.split("(?V1)(?=\\\\{})".format(_marker), _string)
            for sub_string in new_subset[1:]:
                if _marker in sub_string:
                    this_line = re.search("\\\\({}) ?(.+?)?\n".format(_marker), sub_string)

                    this_annotation = this_line.group(2)
                else:
                    marker_stack.pop()
                    return

                map = next_block(sub_string, new_marker)

                aaa[_marker][this_annotation] = map

            marker_stack.pop()
            return aaa
        else:
            aaa = []

            new_subset = re.split("(?V1)(?=\\\\{})".format(_marker), _string)
            for sub_string in new_subset[1:]:
                aaa.append(next_line(sub_string, _marker))

            marker_stack.pop()
            return aaa

    return next_block(string, marker)

