<?php
@define('CONST_Max_Word_Frequency', 50000);
@define('CONST_Term_Normalization_Rules', ":: NFD (); [[:Nonspacing Mark:] [:Cf:]] >;  :: lower (); [[:Punctuation:][:Space:]]+ > ' '; :: NFC ();");
require_once('/lgd/nominatim/src/lib-php/tokenizer/legacy_tokenizer.php');

