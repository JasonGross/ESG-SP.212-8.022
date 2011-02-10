Python 2.6.6 (r266:84297, Aug 24 2010, 18:46:32) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.

    ****************************************************************
    Personal firewall software may warn about the connection IDLE
    makes to its subprocess using this computer's internal loopback
    interface.  This connection is not visible on any external
    interface and no data is sent to or received from the Internet.
    ****************************************************************
    
IDLE 2.6.6      
>>> import os
>>> from __future__ import with_statement
>>> os.chdir(r'D:\Documents\My Dropbox\MIT\2010-2011\SP.212-8.022\ESG-SP.212-8.022')
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'r') as f:
	content = f.read()

	
>>> import re
>>> content2 = content
>>> content2 = re.sub(r'\{(.*?) \\over (.*?)\}', r'\frac{\1}{\2}', content2)
>>> content2 = re.sub(r'\{(.*?)\\over (.*?)\}', r'\frac{\1}{\2}', content2)
>>> content2 = re.sub(r'\{(.*?)\\over([^a-zA-Z].*?)\}', r'\frac{\1}{\2}', content2)
>>> content2 = 
KeyboardInterrupt
>>> content2 = re.sub(r'\\lb([^A-Za-z])', r'\left(\1', content2)
>>> content2 = re.sub(r'\\rb([^A-Za-z])', r'\right)\1', content2)
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content2)

	
>>> content2 = content
>>> content2 = re.sub(r'\{(.*?) \\over (.*?)\}', r'\\frac{\1}{\2}', content2)
>>> content2 = re.sub(r'\{(.*?)\\over (.*?)\}', r'\\frac{\1}{\2}', content2)
>>> content2 = re.sub(r'\{(.*?)\\over([^a-zA-Z].*?)\}', r'\\frac{\1}{\2}', content2)
>>> content2 = re.sub(r'\\lb([^A-Za-z])', r'\\left(\1', content2)
>>> content2 = re.sub(r'\\rb([^A-Za-z])', r'\\right)\1', content2)
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content2)

	
>>> content2 = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content2)
>>> content2 = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content2)
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content2)

	
>>> content0 = content
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'r') as f:
	content = f.read()

	
>>> content2 = content
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content0)

	
>>> content2 = content0
>>> content2 = re.sub(r'\{([^\{\}]*?) \\over ([^\{\}]*?)\}', r'\\frac{\1}{\2}', content2)
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content2)

	
>>> content2 = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content2)
>>> 
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(content2)

	
>>> def fix(content):
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'^\{(.)\}', '^\1', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'^\{(.)\}', '^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'\^\{(.)\}', '^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'\^\{(.)\}', r'^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\^\{(.)\}', r'^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\^\{(.)\}', r'^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'\\lb([^A-Za-z])', r'\\left(\1', content)
	content = re.sub(r'\\rb([^A-Za-z])', r'\\right)\1', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> def fix(content):
	content = re.sub(r'\^\{(.)\}', r'^\1', content)
	content = re.sub(r'\\be([^A-Za-z])', r'\\begin{equation*}\1', content)
	content = re.sub(r'\\ee([^A-Za-z])', r'\\end{equation*}\1', content)
	content = re.sub(r'\{([^\{\}]*?) ?\\over ?([^\{\}]*?)\}', r'\\frac{\1}{\2}', content)
	content = re.sub(r'\\lb([^A-Za-z])', r'\\left(\1', content)
	content = re.sub(r'\\rb([^A-Za-z])', r'\\right)\1', content)
	content = re.sub(r'\{(.*?) ?\\over ?(.*?)\}', r'\\frac{\1}{\2}', content)
	return content

>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(content0))

	
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'r') as f:
	contentm1 = f.read()

	
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(contentm1))

	
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'r') as f:
	contentm1 = f.read()

	
>>> with open('SP_212-8_022_Spring_2011_Problem_Set_3.tex', 'w') as f:
	f.write(fix(contentm1))

	
>>> 
