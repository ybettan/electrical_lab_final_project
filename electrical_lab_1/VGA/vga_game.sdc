###########################################################################
#
# Generated by : Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition
#
# Project      : DE2_USB_API
# Revision     : DE2_USB_API
#
# Date         : Mon Mar 20 14:09:55 +0200 2017
#
###########################################################################
 
 
#
# ------------------------------------------
#
# Create generated clocks based on PLLs
derive_pll_clocks -use_tan_name
#
# ------------------------------------------


# Original Clock Setting Name: TCK
create_clock -period "3.333 ns" \
             -name {TCK} {TCK}
# ---------------------------------------------


# Original Clock Setting Name: CLOCK_50
create_clock -period "20.000 ns" \
             -name {CLOCK_50} {CLOCK_50}
# ---------------------------------------------


# Original Clock Setting Name: CLOCK_27
create_clock -period "37.037 ns" \
             -name {CLOCK_27} {CLOCK_27}
# ---------------------------------------------

# ** Clock Latency
#    -------------

# ** Clock Uncertainty
#    -----------------

# ** Multicycles
#    -----------
# ** Cuts
#    ----

# ** Input/Output Delays
#    -------------------




# ** Tpd requirements
#    ----------------

# ** Setup/Hold Relationships
#    ------------------------

# ** Tsu/Th requirements
#    -------------------


# ** Tco/MinTco requirements
#    -----------------------

#
# Entity Specific Timing Assignments found in
# the Timing Analyzer Settings report panel
#


# ---------------------------------------------
# The following clock group is added to try to 
# match the behavior of:
#   CUT_OFF_PATHS_BETWEEN_CLOCK_DOMAINS = ON
# ---------------------------------------------

set_clock_groups -asynchronous \
                 -group { \
                       VGA_Audio_PLL:p1|altpll:altpll_component|_clk0 \
                       VGA_Audio_PLL:p1|altpll:altpll_component|_clk1 \
                       CLOCK_27 \
                        } \
                 -group { \
                       VGA_Audio_PLL:p1|altpll:altpll_component|_clk0 \
                       VGA_Audio_PLL:p1|altpll:altpll_component|_clk1 \
                       CLOCK_50 \
                        } \
                 -group { \
                       TCK \
                        } \

# ---------------------------------------------
