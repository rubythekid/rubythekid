$("#section").live("change",function(){
    section_id = $("#section").val();
    $.ajax({
        type: "GET",
        url: "/update_category",
        data: "section_id="+section_id
    });
});
$(document).ready(function() {
    $('.delete_post').bind('ajax:success', function() {
        $(this).closest('tr').fadeOut();
    });
});
$("#content_manager").live("click",function(){
    $(".admin_menu_subitem").toggle();
});
