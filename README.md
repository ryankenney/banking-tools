USAA PDF Statements Parser
====================

Here's how you use the script:

 1. Download the PDF file
 2. Use pdftotext (linux) to convert the PDF to a text file:
    ```$ pdftotext statement.pdf```
 3. View the resulting text file (```statement.txt```) side-by-side with the PDF. This allows you to use the PDF as a guide to identify where transactions begin and end.
 4. Copy sections of the text file, beginning with a transaction date and ending with the final text of a transaction.
 5. Paste the copied text into a temporary file (```temp.txt```) .
 6. Use the included bash script to convert the temporary content into tab-delimited content:
 ```cat temp.txt | ./usaa-convert.sh```
 7. Copy/paste the output of that script into a spreadsheet of your choice.


Here is some sample input/output for the script:

```
08/27
202.19 ACH DEBIT
0XXXXX
CAPITAL ONE DIRECTPAY ***********XXXX
08/29
1,111.33 ACH DEBIT
0XXXXX
WELLS FARGO MTG ONLINE PMT ***********XXXX
09/03
44.40 ATM DB NONLOCAL
0XXXXX
922 8TH AVENUE
SAN DIEGO
CA
```

```
08/27	202.19	ACH DEBIT	0XXXXX	CAPITAL ONE DIRECTPAY ***********XXXX	
08/29	1,111.33	ACH DEBIT	0XXXXX	WELLS FARGO MTG ONLINE PMT ***********XXXX	
09/03	44.40	ATM DB NONLOCAL	0XXXXX	922 8TH AVENUE	SAN DIEGO	CA	
```

