/**
 * Created by JetBrains RubyMine.
 * User: liupengtao
 * Date: 12-1-3
 * Time: 下午4:30
 * To change this template use File | Settings | File Templates.
 */
//为商品类别列表增加js交互功能。
var category_list = $('category_list'),
    categoryList = category_list.getElementsByTagName('li'),
    categoryListOffsetTop = $('header').offsetHeight + $('logo_search').offsetHeight;
Arr.forEach(categoryList, function (item) {
    addEventListener(item, 'mouseover', function (e) {
        e = getEvent(e);
        var allItemChildren = item.getElementsByTagName('*'),
            relatedTarget = e.relatedTarget || e.toElement;
        if (Arr.indexOf(allItemChildren, relatedTarget) != -1) {
            preventDefault(e);
            return;
        }
        if (e.relatedTarget && relatedTarget === item) {
            preventDefault(e);
            return;
        }

        var viewportHeight = document.documentElement.clientHeight,
            bodyScrollTop = document.body.scrollTop,
            third, computedStyle, thirdHeight,
            categoryListVisibleHeight,
            currentLiOffsetTopUl = item.offsetTop - categoryListOffsetTop,
            currentLiBottomDistance,
            bottom;
        item.style.cssText = 'background-color:#736767;color:#fffdfb;';
        third = item.getElementsByTagName('div')[0];
        third.style.cssText = 'display:block;';
        computedStyle = third.currentStyle || document.defaultView.getComputedStyle(third, null);
        thirdHeight = parseInt(computedStyle.height);
        categoryListVisibleHeight = viewportHeight - (categoryListOffsetTop - bodyScrollTop);
        if (thirdHeight >= categoryListVisibleHeight) {
            third.style.cssText = third.style.cssText + 'top:-' + currentLiOffsetTopUl + 'px;';
        }
        else {
            currentLiBottomDistance = viewportHeight - (item.offsetTop - document.body.scrollTop);
            if (currentLiBottomDistance < thirdHeight) {
                if (thirdHeight < categoryListVisibleHeight && thirdHeight < viewportHeight) {
                    currentLiBottomDistance -= parseInt((item.currentStyle || document.defaultView.getComputedStyle(item, null)).height);
                    bottom = (currentLiBottomDistance - 25);
                    third.style.cssText = third.style.cssText + 'top:auto;bottom:' + (bottom > 0 ? '-' + bottom : '-20') + 'px;';
                }
                else {
                    currentLiBottomDistance -= parseInt((item.currentStyle || document.defaultView.getComputedStyle(item, null)).height);
                    bottom = (currentLiBottomDistance + 20);
                    third.style.cssText = third.style.cssText + 'top:auto;bottom:' + (bottom > 0 ? '-' + bottom : '-20') + 'px;';
                }
            }
        }
        item.getElementsByTagName('b')[0].style.visibility = 'hidden';
    });
    addEventListener(item, 'mouseout', function (e) {
        var allItemChildren = item.getElementsByTagName('*'),
            relatedTarget = e.relatedTarget || e.toElement;
        e = getEvent(e);
        if (Arr.indexOf(allItemChildren, relatedTarget) != -1 || relatedTarget === item) {
            preventDefault(e);
            return;
        }
        item.style.cssText = '';
        item.getElementsByTagName('div')[0].style.display = 'none';
        item.getElementsByTagName('b')[0].style.visibility = '';
    });
});

//焦点广告图循环显示
var popularFocus = $('popular_focus'),
    popularFocusOrder = $('popular_focus_order'),
    popularFocusOrderList = popularFocusOrder.getElementsByTagName('li'),
    popularFocusList = $('popular_focus_list'), timeout,autoTimeout,
    currentIndex = 0;

function slideBanner(fromIndex, toIndex, direction, size, time) {
    var scrollPosition = direction === 'horizontal' ? 'scrollLeft' : 'scrollTop',
        unitSize = direction === 'horizontal' ? size.width : size.height,
        distance = (toIndex - fromIndex) * unitSize,
        beginTime = new Date().getTime(),
        fromOrderLi = popularFocusOrderList[fromIndex],
        toOrderLi = popularFocusOrderList[toIndex];
    fromOrderLi.className = fromOrderLi.className.replace(/\bfocus-cur\b/g, '');
    toOrderLi.className = toOrderLi.className.replace(/^\s+|\s+$/g, '') + ' focus-cur';
    currentIndex = fromIndex;
    clearTimeout(timeout);
    function animate() {
        var elapsed = new Date().getTime() - beginTime;
        if (elapsed >= time) {
            popularFocusList[scrollPosition] = toIndex * unitSize;
            return;
        }

        popularFocusList[scrollPosition] = Math.sin(elapsed / time) * distance + fromIndex * unitSize;
        timeout = setTimeout(animate, Math.min(time - elapsed, 20));
    }

    timeout = setTimeout(animate, 0);
}

Arr.forEach(popularFocusOrderList, function (item, index, array) {
    addEventListener(item, 'mouseover', function (e) {
        clearTimeout(autoTimeout);
        var fromIndex = Arr.indexOf(popularFocusOrderList, getElementsByClassName(popularFocusOrder, 'focus-cur')[0]),
            toIndex = Arr.indexOf(popularFocusOrderList, item);
        slideBanner(fromIndex, toIndex, 'vertical', {width:490, height:170}, 500);
    });
});

Arr.forEach(popularFocusOrderList, function (item, index, array) {
    addEventListener(item, 'mouseout', function (e) {
        autoTimeout = setTimeout(autoScroll, 3000);
    });
});
function autoScroll() {
    currentIndex = ++currentIndex % 5;
    slideBanner(currentIndex, (currentIndex + 1) % 5, 'vertical', {width:490, height:170}, 500);
    autoTimeout = setTimeout(autoScroll, 3000);
}
autoTimeout = setTimeout(autoScroll, 3000);