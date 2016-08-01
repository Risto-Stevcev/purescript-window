var Maybe = require('Data.Maybe');

exports.parent = window.parent;
exports.top = window.top;
exports.window = window;

exports["alert'"] = function(window) {
  return function(str) {
    return function() {
      alert(str);
    }
  }
}

exports["close'"] = function(window) {
  return function() {
    window.close();
  }
}
exports["closed'"] = function(window) {
  return window.closed;
}

exports["confirm'"] = function(window) {
  return function(str) {
    return function() {
      var result = window.confirm(str); 
      if (result === true)
        return true;
      else
        return false;
    }
  }
}

exports["innerHeight'"] = function(window) {
  return window.innerHeight;
}

exports["innerWidth'"] = function(window) {
  return window.innerWidth;
}

exports["length'"] = function(window) {
  return window.length;
}

exports["minimize'"] = function(window) {
  return function() {
    window.minimize();
  }
}

exports["moveBy'"] = function(window) {
  return function(xDelta) {
    return function(yDelta) {
      return function() {
        window.moveBy(xDelta, yDelta);
      }
    }
  }
}

exports["moveTo'"] = function(window) {
  return function(width) {
    return function(height) {
      return function() {
        window.moveTo(width, height);
      }
    }
  }
}

exports["outerHeight'"] = function(window) {
  return window.outerHeight;
}

exports["outerWidth'"] = function(window) {
  return window.outerWidth;
}





exports["scroll'"] = function(window) {
  return function(xCoord) {
    return function(yCoord) {
      return function() {
        window.scroll(xCoord, yCoord);
      }
    }
  }
}


exports["scrollBy'"] = function(window) {
  return function(xCoord) {
    return function(yCoord) {
      return function() {
        window.scrollBy(xCoord, yCoord);
      }
    }
  }
}

exports["print'"] = function(window) {
  return function() {
    window.print();
  }
}

exports["prompt'"] = function(window) {
  return function(str) {
    return function() {
      var response = window.prompt(str);

      if (response === null)
        return new Maybe.Nothing();
      else
        return new Maybe.Just(response);
    }
  }
}

exports["resizeBy'"] = function(window) {
  return function(xDelta) {
    return function(yDelta) {
      return function() {
        window.resizeBy(xDelta, yDelta);
      }
    }
  }
}

exports["resizeTo'"] = function(window) {
  return function(width) {
    return function(height) {
      return function() {
        window.resizeTo(width, height);
      }
    }
  }
}

exports["screenX'"] = function(window) {
  return window.screenX;
}

exports["screenY'"] = function(window) {
  return window.screenY;
}
exports["scrollX'"] = function(window) {
  return window.scrollX;
}
exports["scrollY'"] = function(window) {
  return window.scrollY;
}
