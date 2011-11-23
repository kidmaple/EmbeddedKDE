*** kdeui/widgets/kcapacitybar.cpp.org	2011-10-18 14:12:57.746607503 +0800
--- kdeui/widgets/kcapacitybar.cpp	2011-10-18 14:20:47.980939268 +0800
***************
*** 32,37 ****
--- 32,38 ----
  #include <QtGui/QPainterPath>
  #include <QtGui/QLinearGradient>
  #include <QtGui/QStyleOptionFrame>
+ #include <QtGui/QWidget>
  
  #include <kcolorscheme.h>
  
***************
*** 93,99 ****
          updateGeometry();
      }
  
!     setAccessibleName(text);
  
      update();
  }
--- 94,100 ----
          updateGeometry();
      }
  
!     //setAccessibleName(text);
  
      update();
  }
