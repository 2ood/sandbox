document.addEventListener('DOMContentLoaded', function () {
  const table  = document.getElementById('table');

  let draggingEle;
  let draggingColumnIndex;
  let draggingRowIndex;
  let isDraggingStarted = false;
  let list;
  let placeholder;

  let x = 0;
  let y = 0;

  const swap = function (nodeA, nodeB) {
    const parentA = nodeA.parentNode;
    const siblingA = nodeA.nextSibling === nodeB ? nodeA : nodeA.nextSibling;

    // Move `nodeA` to before the `nodeB`
    nodeB.parentNode.insertBefore(nodeA, nodeB);

    // Move `nodeB` to before the sibling of `nodeA`
    parentA.insertBefore(nodeB, siblingA);
  };

  // Check if `nodeA` is on the left of `nodeB`
  const isOnLeft = function (nodeA, nodeB) {
    // Get the bounding rectangle of nodes
    const rectA = nodeA.getBoundingClientRect();
    const rectB = nodeB.getBoundingClientRect();

    return rectA.left + rectA.width / 2 < rectB.left + rectB.width / 2;
  };

  const cloneTable = function() {
    const rect = table.getBoundingClientRect();

    list = document.createElement('div');
    list.classList.add('clone-list');
    list.style.position = 'absolute';
    list.style.left = `${rect.left}px`;
    list.style.top = `${rect.top}px`;
    table.parentNode.insertBefore(list,table);

    table.style.visibility = 'hidden';

    const originalCells = [].slice.call(table.querySelectorAll('tbody td'));

    const originalHeaderCells = [].slice.call(table.querySelectorAll('th'));
    const numColumns = originalHeaderCells.length;

    originalHeaderCells.forEach(function(headerCell, headerIndex) {
      const width = parseInt(window.getComputedStyle(headerCell).width);

      const item = document.createElement('div');
      item.classList.add('draggable');

      const newTable = document.createElement('table');
      newTable.setAttribute('class', 'clone-table');
      newTable.style.width = `${width}px`;

      const th = headerCell.cloneNode(true);
      let newRow = document.createElement('tr');
      newRow.appendChild(th);
      newTable.appendChild(newRow);

      const cells = originalCells.filter(function(c,idx) {
        return (idx - headerIndex)%numColumns ===0;
      });

      cells.forEach(function(cell) {
        const newCell = cell.cloneNode(true);
        newCell.style.width = `${width}px`;
        newRow = document.createElement('tr');
        newRow.appendChild(newCell);
        newTable.appendChild(newRow);
      });

      item.appendChild(newTable);
      list.appendChild(item);
    })
  };


  const mouseDownHandler = function(e) {
    draggingColumnIndex = [].slice.call(table.querySelectorAll('th')).indexOf(e.target);

    x = e.clientX - e.target.offsetLeft;
    y = e.clientY - e.target.offsetTop;

    document.addEventListener('mousemove',mouseMoveHandler);
    document.addEventListener('mouseup',mouseUpHandler);
  };

  const mouseMoveHandler = function(e){
    if(!isDraggingStarted) {
      isDraggingStarted = true;

      cloneTable();

      draggingEle = [].slice.call(list.children)[draggingColumnIndex];
      draggingEle.classList.add('dragging');

      placeholder = document.createElement('div');
      placeholder.classList.add('placeholder');
      draggingEle.parentNode.insertBefore(placeholder,draggingEle.nextSibling);
      placeholder.style.width = `${draggingEle.offsetWidth}px`;
    }

    draggingEle.style.position = 'absolute';
    draggingEle.style.top = `${draggingEle.offsetTop + e.clientY -y }px`;
    draggingEle.style.left = `${draggingEle.offsetLeft + e.clientX - x}px`;

    x = e.clientX;
    y = e.clientY;

    const prevEle = draggingEle.previousElementSibling;
    const nextEle = placeholder.nextElementSibling;

    if(prevEle && isOnLeft(draggingEle, prevEle)) {
      swap(placeholder,draggingEle);
      swap(placeholder,prevEle);
    }

    if(nextEle && isOnLeft(nextEle, draggingEle)) {
      swap(nextEle, placeholder);
      swap(nextEle, draggingEle);
    }
  };

  const mouseUpHandler = function() {
    placeholder.parentNode.removeChild(placeholder);
    isDraggingStarted = false;

    draggingEle.classList.remove('dragging');
    draggingEle.style.removeProperty('top');
    draggingEle.style.removeProperty('left');
    draggingEle.style.removeProperty('position');

    const endColumnIndex = [].slice.call(list.children).indexOf(draggingEle);

    list.parentNode.removeChild(list);

    table.querySelectorAll('tr').forEach(function (row) {
      const cells = [].slice.call(row.querySelectorAll('th, td'));
      draggingColumnIndex > endColumnIndex ? cells[endColumnIndex].parentNode.insertBefore(cells[draggingColumnIndex],cells[endColumnIndex]) :
      cells[endColumnIndex].parentNode.insertBefore(
        cells[draggingColumnIndex], cells[endColumnIndex].nextSibling
      );

    });

    table.style.removeProperty('visibility');

    document.removeEventListener('mousemove',mouseMoveHandler);
    document.removeEventListener('mouseup',mouseUpHandler);
  }


  table.querySelectorAll('th').forEach(function(headerCell){
    headerCell.classList.add('draggable');
    headerCell.addEventListener('mousedown',mouseDownHandler);
  });

});
