function dateComparator(date1, date2) {
    var date1Number = monthToComparableNumber(date1);
    var date2Number = monthToComparableNumber(date2);

    if (date1Number===null && date2Number===null) {
        return 0;
    }
    if (date1Number===null) {
        return -1;
    }
    if (date2Number===null) {
        return 1;
    }

    return date1Number - date2Number;
}

// eg 29/08/2004 gets converted to 20040829
function monthToComparableNumber(date) {
    if (date === undefined || date === null || date.length !== 10) {
        return null;
    }

    var yearNumber = date.substring(6,10);
    var monthNumber = date.substring(3,5);
    var dayNumber = date.substring(0,2);

    var result = (yearNumber*10000) + (monthNumber*100) + dayNumber;
    return result;
}

//정당현황
var columnDefs1 = [
    {headerName: "정당", field: "athvare", width: 150, sort: 'desc'},
    {headerName: "호오도", field: "age", width: 90},
    {headerName: "의정활동", field: "country", width: 120},
    {headerName: "재산변동", field: "year", width: 90, unSortIcon: true},
    {headerName: "후원", field: "date", width: 110, comparator: dateComparator}
];
var columnOption1 =  {
	defaultColDef: {sortable: true},
	columnDefs: columnDefs1,
	rowData: null
}

//의원현황 - 관심등록
var columnDefs2 = [
    {headerName: "정당", field: "athvare", width: 150, sort: 'desc'},
    {headerName: "호오도", field: "age", width: 90},
    {headerName: "의정활동", field: "country", width: 120},
    {headerName: "재산변동", field: "year", width: 90, unSortIcon: true},
    {headerName: "후원", field: "date", width: 110, comparator: dateComparator}
];
var columnOption2 = {
	defaultColDef: {sortable: true},
	columnDefs: columnDefs2,
	rowData: null
}

//의원현황 - 전체등록
var columnDefs3 = [
    {headerName: "정당", field: "athvare", width: 150, sort: 'desc'},
    {headerName: "호오도", field: "age", width: 90},
    {headerName: "의정활동", field: "country", width: 120},
    {headerName: "재산변동", field: "year", width: 90, unSortIcon: true},
    {headerName: "후원", field: "date", width: 110, comparator: dateComparator}
];
var columnOption3 = {
	defaultColDef: {sortable: true},
	columnDefs: columnDefs3,
	rowData: null
}

// setup the grid after the page has finished loading
document.addEventListener('DOMContentLoaded', function() {
	//정당현황
	if ($('#partyGrid').length){
		var gridDiv = document.querySelector('#partyGrid');
		new agGrid.Grid(gridDiv, columnOption1);
		var httpRequest = new XMLHttpRequest();
		httpRequest.open('GET', 'https://raw.githubusercontent.com/ag-grid/ag-grid/master/packages/ag-grid-docs/src/olympicWinnersSmall.json');
		httpRequest.send();
		httpRequest.onreadystatechange = function() {
			if (httpRequest.readyState === 4 && httpRequest.status === 200) {
				var httpResult = JSON.parse(httpRequest.responseText);
				columnOption1.api.setRowData(httpResult);
			}
		};
	}

	//의원현황 - 관심의원
	if ($('#paliamentGrid1').length){
		var gridDiv = document.querySelector('#paliamentGrid1');
		new agGrid.Grid(gridDiv, columnOption2);
		var httpRequest = new XMLHttpRequest();
		httpRequest.open('GET', 'https://raw.githubusercontent.com/ag-grid/ag-grid/master/packages/ag-grid-docs/src/olympicWinnersSmall.json');
		httpRequest.send();
		httpRequest.onreadystatechange = function() {
			if (httpRequest.readyState === 4 && httpRequest.status === 200) {
				var httpResult = JSON.parse(httpRequest.responseText);
				columnOption2.api.setRowData(httpResult);
			}
		};
	}

	//의원현황 - 전체의원
	if ($('#paliamentGrid2').length){
		var gridDiv = document.querySelector('#paliamentGrid2');
		new agGrid.Grid(gridDiv, columnOption3);
		var httpRequest = new XMLHttpRequest();
		httpRequest.open('GET', 'https://raw.githubusercontent.com/ag-grid/ag-grid/master/packages/ag-grid-docs/src/olympicWinnersSmall.json');
		httpRequest.send();
		httpRequest.onreadystatechange = function() {
			if (httpRequest.readyState === 4 && httpRequest.status === 200) {
				var httpResult = JSON.parse(httpRequest.responseText);
				columnOption3.api.setRowData(httpResult);
			}
		};
	}
})
