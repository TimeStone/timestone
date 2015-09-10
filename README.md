# timestone
fork of tushare to support nasdaq

1: add those 2 line to ~/.bashrc, and restart termial
	export WSROOT=/drives/c/pursue_data/timestone
	source $WSROOT/kits/bashrc.sh

2: Install 3rds 
pip install pandas
#Need for downloand US data
pip install pylab
pip uninstall python-dateutil

TODO:



公司列表：
http://www.nasdaq.com/screening/company-list.aspx
http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nasdaq&render=download
http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nyse&render=download
http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=amex&render=download

历史数据：
http://www.nasdaq.com/symbol/jd/historical 需要javascript 配合
http://askubuntu.com/questions/411540/how-to-get-wget-to-download-exact-same-web-page-html-as-browser
$ phantomjs save_page.js http://example.com > page.html

with save_page.js:

var system = require('system');
var page = require('webpage').create();

page.open(system.args[1], function()
{
    console.log(page.content);
    phantom.exit();
});

nstead of --recursive, which will just go ahead and "spider" every single link in your URL, use --page-requisites. Should behave exactly as the options you describe in graphical browsers. 

历史数据
总录
http://www.quantshare.com/sa-426-6-ways-to-download-free-intraday-and-tick-data-for-the-us-stock-market
http://www.google.com/finance/getprices?i=60&p=10d&f=d,o,h,l,c,v&df=cpct&q=JD
http://chartapi.finance.yahoo.com/instrument/1.0/jd/chartdata;type=quote;range=1d/csv
http://chartapi.finance.yahoo.com/instrument/1.0/jd/chartdata;type=quote;range=1d/csv

说明http://www.jarloo.com/yahoo_finance/
http://theeclecticengineer.blogspot.com/2014/03/summary-of-yahoos-financial-api.html
http://chartapi.finance.yahoo.com/instrument/1.0/sqqq/chartdata;type=quote;ys=2010;yz=2;ts=1234567890/csv?period=50
http://chartapi.finance.yahoo.com/instrument/1.0/sqqq/chartdata;type=quote;range=1d;ys=2010;yz=1;ts=1439521878/csv?period=50

http://ichart.finance.yahoo.com/table.csv?s=TICKER&a=fM&b=fD&c=fY&d=M&e=D&f=Y

最终：http://chartapi.finance.yahoo.com/instrument/1.0/IBM/chartdata;type=quote;ys=2006;yz=1/csv？f=nab
www.google.com/finance/getprices?i=600&p=10d&f=d,o,h,l,c,v&df=cpct&q=IBM

各国 宏观数据库
http://quant.stackexchange.com/questions/141/what-data-sources-are-available-online
	http://finance.ifeng.com/gold/data/
	
	http://api.finance.ifeng.com/D/?code=600848&type=last
	http://api.finance.ifeng.com/akdaily/?code=sh000001&type=last
	http://api.finance.ifeng.com/akdaily/?code=sh000001&type=last
	
	api.finance.ifeng.com/app/hq/stock/sz000950/
	
http://finance.ifeng.com/app/hq/usstock/AOB/index.shtml
http://finance.ifeng.com/app/hq/stock/sh600275/

http://api.finance.ifeng.com/akdaily/?code=AOB&type=last

http://ichart.yahoo.com/table.csv?s=600000.SS&a=08&b=25&c=2010&d=09&e=8&f=2010&g=d  

https://au.finance.yahoo.com/q?s=JD&ql=1
https://au.finance.yahoo.com/q?s=600000.SS&ql=1


http://finance.ifeng.com/app/hq/stock/sz000950/


DAY_PRICE_URL = '%sapi.finance.%s/%s/?code=%s&type=last'
LIVE_DATA_URL = '%shq.%s/rn=%s&list=%s'
DAY_PRICE_MIN_URL = '%sapi.finance.%s/akmin?scode=%s&type=%s'

http://api.finance.ifeng/D/?code=600848&type=last'
http://finance.sina.com.cn/realstock/company/sh600000/nc.shtml
http://stock.finance.sina.com.cn/usstock/quotes/JD.html


http://vip.stock.finance.sina.com.cn/quotes_service/api/json_v2.php/Market_Center.getHQNodeData?page=1&num=40&sort=symbol&asc=1&node=cyb&_s_r_a=init

http://vip.stock.finance.sina.com.cn/quotes_service/api/json_v2.php/MoneyFlow.ssi_ssfx_flzjtj?daima=sh%06d
http://vip.stock.finance.sina.com.cn/quotes_service/api/json_v2.php/MoneyFlow.ssi_ssfx_flzjtj?daima=sz%06d
http://market.finance.sina.com.cn/downxls.php?date=2011-07-08&symbol=sh600900

http://ichart.yahoo.com/table.csv?s=BAS.DE&a=0&b=1&c=2000&d=0&e=31&f=2010&g=w&ignore=.csv	

https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quoteslist%20where%20symbol%3D'%5EIBEX'&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=
https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quoteslist%20where%20symbol%3D'%5EIBEX'&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=



结果：
1： history date:
https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quoteslist%20where%20symbol%3D'%5EIBEX'&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=
	
	
	
 
	symbol : JD
	Ask : 25.24
	AverageDailyVolume : 10698100
	Bid : 24.91
	AskRealtime : null
	BidRealtime : null
	BookValue : 4.19
	Change_PercentChange : -1.00 - -3.86%
	Change : -1.00
	
	
	
 
	Commission : null
	
	
	
 
	Currency : USD
	
	
	
 
	ChangeRealtime : null
	
	
	
 
	AfterHoursChangeRealtime : null
	
	
	
 
	DividendShare : null
	
	
	
 
	LastTradeDate : 9/1/2015
	
	
	
 
	TradeDate : null
	
	
	
 
	EarningsShare : -0.21
	
	
	
 
	ErrorIndicationreturnedforsymbolchangedinvalid : null
	
	
	
 
	EPSEstimateCurrentYear : 0.10
	
	
	
 
	EPSEstimateNextYear : 1.68
	
	
	
 
	EPSEstimateNextQuarter : 0.03
	
	
	
 
	DaysLow : 24.68
	
	
	
 
	DaysHigh : 25.92
	
	
	
 
	YearLow : 21.55
	
	
	
 
	YearHigh : 38.00
	
	
	
 
	HoldingsGainPercent : null
	
	
	
 
	AnnualizedGain : null
	
	
	
 
	HoldingsGain : null
	
	
	
 
	HoldingsGainPercentRealtime : null
	
	
	
 
	HoldingsGainRealtime : null
	
	
	
 
	MoreInfo : null
	
	
	
 
	OrderBookRealtime : null
	
	
	
 
	MarketCapitalization : 34.03B
	
	
	
 
	MarketCapRealtime : null
	
	
	
 
	EBITDA : -59.18M
	
	
	
 
	ChangeFromYearLow : 3.33
	
	
	
 
	PercentChangeFromYearLow : +15.45%
	
	
	
 
	LastTradeRealtimeWithTime : null
	
	
	
 
	ChangePercentRealtime : null
	
	
	
 
	ChangeFromYearHigh : -13.12
	
	
	
 
	PercebtChangeFromYearHigh : -34.53%
	
	
	
 
	LastTradeWithTime : 4:00pm - &lt;b&gt;24.88&lt;/b&gt;
	
	
	
 
	LastTradePriceOnly : 24.88
	
	
	
 
	HighLimit : null
	
	
	
 
	LowLimit : null
	
	
	
 
	DaysRange : 24.68 - 25.92
	
	
	
 
	DaysRangeRealtime : null
	
	
	
 
	FiftydayMovingAverage : 30.30
	
	
	
 
	TwoHundreddayMovingAverage : 31.70
	
	
	
 
	ChangeFromTwoHundreddayMovingAverage : -6.82
	
	
	
 
	PercentChangeFromTwoHundreddayMovingAverage : -21.50%
	
	
	
 
	ChangeFromFiftydayMovingAverage : -5.42
	
	
	
 
	PercentChangeFromFiftydayMovingAverage : -17.90%
	
	
	
 
	Name : JD.com, Inc.
	
	
	
 
	Notes : null
	
	
	
 
	Open : 25.01
	
	
	
 
	PreviousClose : 25.88
	
	
	
 
	PricePaid : null
	
	
	
 
	ChangeinPercent : -3.86%
	
	
	
 
	PriceSales : 1.55
	
	
	
 
	PriceBook : 6.18
	
	
	
 
	ExDividendDate : null
	
	
	
 
	PERatio : null
	
	
	
 
	DividendPayDate : null
	
	
	
 
	PERatioRealtime : null
	
	
	
 
	PEGRatio : 41.25
	
	
	
 
	PriceEPSEstimateCurrentYear : 248.80
	
	
	
 
	PriceEPSEstimateNextYear : 14.81
	
	
	
 
	Symbol : JD
	
	
	
 
	SharesOwned : null
	
	
	
 
	ShortRatio : 1.96
	
	
	
 
	LastTradeTime : 4:00pm
	
	
	
 
	TickerTrend : null
	
	
	
 
	OneyrTargetPrice : 249.88
	
	
	
 
	Volume : 10543734
	
	
	
 
	HoldingsValue : null
	
	
	
 
	HoldingsValueRealtime : null
	
	
	
 
	YearRange : 21.55 - 38.00
	
	
	
 
	DaysValueChange : null
	
	
	
 
	DaysValueChangeRealtime : null
	
	
	
 
	StockExchange : NMS
	
	
	
 
	DividendYield : null
	
	
	
 
	PercentChange : -3.86%
