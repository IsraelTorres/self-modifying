#!/bin/bash
# Israel Torres
# self-modifying shell script (good/evil switcher)
# 20170406
# ./self-modify-switcher.sh
# every time this file is run, it will switch from 'good' to 'evil'
# 
# STATE="GOOD"
##################################################################################
data="UEsDBBQAAgAIAAuHhkqYTUT6gwIAAOYDAAAXABwAc2VsZi1tb2RpZnktc3dpdGNoZXIuc2hVVAkAA6XV5lhO9OZYdXgLAAEE9QEAAAQUAAAAtVPLkppQEN3PV9xoKiZlHB6KDouZqkZAUVRQRGWHcHkML+XyUCofH5zZZJdN0nWr+3RVn9NVt7u7X6hzmFJnmwRPXaSQ3MYxMrI8x6TNCY69QZK5oXcPUx+RAMcxIk4eXgr0vbLjEiMnK9MC5z/aapZmJvSIHrfwmfqDOiB1WDgBzp8/muAK53dUhAlGRRAS5IUxRm3My/QnCgtUh48mHxTk5VmCergK4x4qMtTzs8zttRrt2xlgSK8dyVTUzlP3n9uTaxf2a2cvEVEQdAAfFFgv+CDKJWoB62ENAOpJaP0RhBoc1iRWyBRndnux0qhwhu7Fna0z66iUDhuYJkQAdCNzccA1G+vkHn0VQJJ4XWol9H3roDAFwSarWlKbiWxuOGaa7sl2PcXR1Y9Ug+YkjQfHtG96eTd3W8u2p1rO3Yw5D+W0IeKmWdV9k2FGuTTeuXy6ccd8xBr6ofSURX+yGM+XdVgdzFuzfjFezuCORhTcrG2SpTp7iFacMDH4yQVrLj7jS+WTKotVj5V1HhsHnpsuF8uJUgkwFZmJLdqSu6ZpLZNE9f0+H04NvfFHWVPYVyCzMFuFyU7gLhp/PfK5b5xpppHktM9xq8sMbzeUUjBpPD8eRu+TzV7zZ+O4zyacPk/OxLRgw5nefuHZmbwyr6msxGNqKC6jtDlR2hgYQQVdwXD721x8+LTHH4uFrz+w0FiHW6IemMqaxQneMY3LxvSJDWIn5BpbNvftuEVjdUwOc3M0rUEQtP1DT5IfdFlQBf30KauDADL9QDV8aMPrf1nF7hN2ggx1vj52soN+ofZc8XiEBuIDE7ewczS4Vd4AvSHKxRWVlu0JsW/fmJbalTbyb1BLAQIeAxQAAgAIAAuHhkqYTUT6gwIAAOYDAAAXABgAAAAAAAEAAADtgQAAAABzZWxmLW1vZGlmeS1zd2l0Y2hlci5zaFVUBQADpdXmWHV4CwABBPUBAAAEFAAAAFBLBQYAAAAAAQABAF0AAADUAgAAAAA="
##################################################################################
#
echo "$data" | base64 -D | bsdtar -xvf- > /dev/null 2>&1
#
#EOF