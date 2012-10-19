$(document).ready(function () {
  $('#ReleaseDate').datepicker({ dateFormat: "dd/mm/yy" });
});

$(function () {
  $(".SortableList").sortable();
  $(".SortableList").disableSelection();
});