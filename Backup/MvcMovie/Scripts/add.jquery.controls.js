$(document).ready(function () {
  $('#ReleaseDate').datepicker({ dateFormat: "dd/mm/yy" });
});

$(function () {
  $(".SortableList").sortable();
  $(".SortableList").disableSelection();
});

$(function () {
  $(".DraggableListItem").draggable({ containment: "#MoviesListContainer", scroll: false });
});

$(function() {
    $( ".NoticeBoardColumn" ).sortable({
      connectWith: ".NoticeBoardColumn"
    });
    $( ".Notice" ).addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
          .find( ".NoticeHeader" )
          .addClass( "ui-widget-header ui-corner-all" )
          .prepend( "<span class='ui-icon ui-icon-minusthick'></span>")
          .end()
        .find( ".NoticeBody" );
      $( ".NoticeHeader .ui-icon" ).click(function() {
        $( this ).toggleClass( "ui-icon-minusthick" ).toggleClass( "ui-icon-plusthick" );
        $( this ).parents( ".Notice:first" ).find( ".NoticeBody" ).toggle();
    });
    $( ".column" ).disableSelection();
  });
