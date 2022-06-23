# genodds 1.1.2

Added useful contributions by Howard on a related approach. Method now also offers a permutation test equivalent method, plus an interpretable statement of effect as proposed by Howard.

Patched a bug when switching between dropping and splitting ties. Previously, when assuming null standard error and dropping ties confidence intervals and p-values would erroneously return NA values.

# genodds 1.1

Added option for controlling standard error. The use of standard error under Null for calculations (Following O'Brien's approach is now achieved by means of the assume_no_effect option).

Patched a bug in the calculation of cell proportions for the purposes of calculating standard error under null. Previous version assumed equal group sizes.

NOTE: I forgot to upload this to Github for the dev version. See cran/genodds for this version.

# genodds 1.0

Package released
