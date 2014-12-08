book = LOAD '/user/hue/errorlog.txt' USING PigStorage() AS (lines:chararray);
words = FOREACH book GENERATE FLATTEN(TOKENIZE(lines)) as word;
STORE  words INTO '$INPUT';
