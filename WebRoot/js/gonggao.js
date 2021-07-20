function $(id)
    {
        return document.getElementById(id);
    }

    var speed = 10;
    var delay = 1500;
    var timeout = 0;
    function scroll()
    {
        if($('scrollBody').scrollTop == $('scrollBody').scrollHeight - 25)
        {
            $('scrollBody').scrollTop = 0;
            $('scrollBody').scrollTop ++ ;
            timeout = setTimeout('scroll()', delay);

        }else if ($('scrollBody').scrollTop % 25 == 0)
        {
            $('scrollBody').scrollTop ++ ;
            timeout = setTimeout('scroll()', delay);
        }else
        {
            $('scrollBody').scrollTop ++ ;
            timeout = setTimeout('scroll()', speed);
        }
    }
    
    
    