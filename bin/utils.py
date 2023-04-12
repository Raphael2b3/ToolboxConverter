import re

"""
A file with only functions to make the main function more readable
"""


def is_in_subpart(pfx_str, do_filter, filters):
    nr_re = re.compile("(.+?_[I\d]+_)(\d+)\.([\d\S]+)")

    def get_(pfx_str, index):
        return nr_re.search(pfx_str).group(index)

    def get_int(pfx_str, index):
        result = get_(pfx_str, index)
        return result.swapcase()  # weil Majuskeln im Unicodeblock vor Minuskeln kommen

    if not nr_re.search(pfx_str):
        return False

    for filter in filters:
        wrong_part = filter[2] not in do_filter
        wrong_book = get_(pfx_str, 1) != get_(filter[0], 1)
        before_first_page = get_int(pfx_str, 2) < get_int(filter[0], 2)
        after_last_page = get_int(pfx_str, 2) > get_int(filter[1], 2)
        before_first_line = get_int(pfx_str, 2) == get_int(filter[0], 2) and get_int(pfx_str, 3) < get_int(filter[0], 3)
        after_last_line = get_int(pfx_str, 2) == get_int(filter[1], 2) and get_int(pfx_str, 3) > get_int(filter[1], 3)

        if True not in [wrong_part, wrong_book, before_first_page, after_last_page, before_first_line, after_last_line]:
            return filter[2]

    return False

