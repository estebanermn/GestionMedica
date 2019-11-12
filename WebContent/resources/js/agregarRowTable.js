$("#add_row").on("click",function(){var o=0;$.each($("#tab_logic tr"),function(){parseInt($(this).data("id"))>o&&(o=parseInt($(this).data("id")))}),o++;var i=$("<tr></tr>",{id:"addr"+o,"data-id":o});$.each($("#tab_logic tbody tr:nth(0) td"),
                    function(){var t=$(this),e=t.children();
                if(null!=$(this).data("name")){
                      var a=$("<td></td>",{"data-name":$(t).data("name")}),
                              n=$(t).find($(e[0]).prop("tagName")).clone().val("");
                      n.attr("name",$(t).data("name")+o),n.appendTo($(a)),a.appendTo($(i))
                  }else a=$("<td></td>",{
                      text:$("#tab_logic tr").length
                  }).appendTo($(i))
                    }),$(i).appendTo($("#tab_logic"))
                      ,$(i).find("td button.row-remove").on("click",
                          function(){$(this).closest("tr").remove()})
                      }),
                        $(".table-sortable tbody").sortable({revert:!0,forceHelperSize:!0,forcePlaceholderSize:!0,tolerance:"pointer",
                          start:function(t,e){e.placeholder.width(e.item.width()),e.placeholder.height(e.item.height()),e.placeholder.addClass(e.item.attr("class"))}}).disableSelection(),$(".table-sortable thead").disableSelection(),$("#add_row").trigger("click"),jQuery(function(e){e(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpAjaxContainerReady,function(t){}),e(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerResizeEventName,function(t){}),e(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenCompress,function(t,e){}),e(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenExpand,function(t,e){}),e(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerRemoveEventName,function(t){return e(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenCompress),e(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenExpand),!0})})
                           
    
                                



