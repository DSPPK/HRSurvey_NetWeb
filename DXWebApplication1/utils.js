function customizeTooltip(args) {
    return {
        html: "<div class='state-tooltip'>" +
        "<h4>" + args.argument + "</h4>" +
        "<b>Jumlah</b>: " + args.value + " orang (" + args.percentText + ").<br/>" +
        "</div>"
    };
}
function RecalculateCharsRemaining(editor) {
    var maxLength = parseInt(editor.maxLength ? editor.maxLength : editor.GetInputElement().maxLength);
    var editValue = editor.GetValue();
    var valueLength = editValue != null ? editValue.toString().length : 0;
    var charsRemaining = maxLength - valueLength;
    SetCharsRemainingValue(editor, charsRemaining >= 0 ? charsRemaining : 0, valueLength);
}
function SetCharsRemainingValue(textEditor, charsRemaining, valueLength) {
    var associatedLabel = ASPxClientControl.GetControlCollection().Get(textEditor.name + "_cr");
    var color = GetLabelColor(charsRemaining).toString();
    associatedLabel.SetText("<span style='color: " + color + ";'>" + valueLength + " / " + charsRemaining.toString() + "</span>");
}
function GetLabelColor(charsRemaining) {
    if (charsRemaining < 1000) return "red";
    if (charsRemaining < 2000) return "#F3A250";
    return "green";
}
function InitMemoMaxLength(memo, maxLength) {
    memo.maxLength = maxLength;
}
function EnableMaxLengthMemoTimer(memo) {
    memo.maxLengthTimerID = window.setInterval(function () {
        var text = memo.GetText();
        if (text.length > memo.maxLength) {
            memo.SetText(text.substr(0, memo.maxLength));
            RecalculateCharsRemaining(memo);
        }
    }, 50);
}
function DisableMaxLengthMemoTimer(memo) {
    if (memo.maxLengthTimerID) {
        window.clearInterval(memo.maxLengthTimerID);
        delete memo.maxLengthTimerID;
    }
}
function CheckSpecialChar(s, e) {
    if ((e.htmlEvent.keyCode >= 48 && e.htmlEvent.keyCode <= 57) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122)) {
        return true;
    }
    else {
        ASPxClientUtils.PreventEvent(e.htmlEvent);
    }
}
function SpecialKey(evt) {
    var keyCode = evt.keyCode;
    if (!evt.ctrlKey) {
        /* keydown / keyup
        8-backspace; 9-tab; 13-Enter; 16-Shift; 17-Ctrl; 18-Alt; 19-Pause; 20-CapsLock; 27-Esc;    
        33-PageUp; 34-PageDown; 35-End;	36-Home; 37-Left; 38-Up; 39-Right; 40-Down; 45-Insert; 46-Delete; 91-Win;    
        F1-F12 - 112-123; 144-NumLock; ScrollLock - 145;	  
        */
        /*keypress
        ! 33; " 34; # 35; $ 36; % 37; & 38; ' 39;
        ( 40; ) 41; * 42; + 43; - 45;
        : 58; ; 59; < 60; = 61; > 62; ? 63; @ 64;
        [ 91; ] 93; ^ 94; _ 95; ` 96;
        { 123; | 124; } 125; ~ 126;
        */
        // Allow Key
        //if (keyCode == 46 || keyCode == 8 || keyCode == 9 || (keyCode < 46 && keyCode > 32) || keyCode == 109 || keyCode == 110) return true;
        if (keyCode == 46 || keyCode == 8 || keyCode == 9 || (keyCode < 46 && keyCode > 32) || keyCode == 109 || keyCode == 110) return true;
        // Deny Key
        if (
            (keyCode < 28 && keyCode > 8)
            //|| (event.keyCode<46 && event.keyCode>32) 
            || (keyCode == 91)
            || (keyCode < 146 && keyCode > 111)
            //	|| (event.keyCode<46 && event.keyCode>32)
            || (keyCode < 65 && keyCode > 57)
            || (keyCode < 96 && keyCode > 90) //
            || (keyCode < 127 && keyCode > 122)
        ) return false;
    } else {
        return true;
    }
}
function numericonly(evt) {
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    if (!evt.ctrlKey) {
        if (keyCode >= 48 && keyCode <= 57 || keyCode == 8) {
            return true;
        }
        else {
            return false;
        }
    } else {
        return true;
    }
}
function allcharacter(evt) {
    var srcField = evt.target || evt.srcElement;
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    if (!evt.ctrlKey) {
        setCapital(evt);
        return true;
    } else {
        return true;
    }
}
function alphanumericonly(evt) {
    var srcField = evt.target || evt.srcElement;
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    if (!evt.ctrlKey) {
        if ((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || keyCode >= 48 && keyCode <= 57) {
            if ((keyCode >= 97 && keyCode <= 122)) {
                setCapital(evt);
            } else {
                return true;
            }
        }
        else {
            return false;
        }
    } else {
        return true;
    }
}
function alphanumericonlyspasi(evt) {
    var srcField = evt.target || evt.srcElement;
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    if (!evt.ctrlKey) {
        setCapital(evt);
        if ((keyCode >= 65 && keyCode <= 90) || keyCode >= 48 && keyCode <= 57 || keyCode == 32 || keyCode == 8) {
            return true;
        }
        else {
            return false;
        }
    } else {
        return true;
    }
}
function phonenumber(evt) {
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    if (SpecialKey(evt)) return true;
    if (keyCode >= 48 && keyCode <= 57 || keyCode == 8) {
        //alert(a);
        return true;
    }
    else {
        // alert(a);
        return false;
    }
}
function isDec(event) {
    var keyCode = (window.event) ? event.keyCode : event.which;
    if ((keyCode < 48 || keyCode > 57) && (keyCode == 109) && (keyCode < 96 || keyCode > 105) && (keyCode != 110 && keyCode != 190 && keyCode != 189))        //change 190 '.' to 188 ',' for id-ID 
    {
        return false;
    }
    else {
        return true;
    }
}
function character(evt) {
    var srcField = evt.target || evt.srcElement;
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    //if (SpecialKey(evt)) return true;
    //A : 65; Z : 90; a:97; z:122; 0:48; 9:57; spasi : 32; - : 45
    //alert(evt.keyCode);
    if (!evt.ctrlKey) {
        setCapital(evt);
        if ((keyCode >= 65 && keyCode <= 90) || (keyCode == 32) || keyCode == 8) {
            return true;
        } else if (keyCode == 0) {
            return true;
        }
        else {
            return false;
        }
    } else {
        return true;
    }
}
function setCapital(evt) {
    var srcField = evt.target || evt.srcElement;
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    if ((keyCode >= 97 && keyCode <= 122)) {
        var versionie = "11"
        var ua = window.navigator.userAgent;
        if (navigator.appName == 'Microsoft Internet Explorer') {
            var msie = ua.indexOf("MSIE ");
            if (msie > 0) {
                versionie = "" + parseInt(ua.substring(msie + 5, ua.indexOf(".", msie)));
            }
        }
        if (versionie != "11" && versionie != "10") {
            if (keyCode > 96 && keyCode < 123) {
                keyCode -= 32;
                evt.keyCode = keyCode;
            } else if (keyCode == 39) {
                keyCode = 0;
                evt.keyCode = keyCode;
            }
        } else {
            var maximum = srcField.maxLength;
            if (maximum < 0) {
                maximum = srcField.value.length + 1;
            }
            if (typeof (maximum) != 'undefined') {
                if (maximum > srcField.value.length) {
                    if (srcField.maxLength > srcField.value.length) {
                        var newkeyCode = keyCode - 32;
                        var inputLetter = String.fromCharCode(newkeyCode);
                        var caretPosStart = srcField.selectionStart;
                        var caretPosEnd = srcField.selectionEnd;
                        var startString = srcField.value.slice(0, srcField.selectionStart);
                        var endString = srcField.value.slice(srcField.selectionEnd, srcField.value.length);
                        var valueStart, valueEnd;
                        if (caretPosStart == caretPosEnd) {
                            valueStart = srcField.value.substring(0, caretPosStart);
                            valueEnd = srcField.value.substring(valueStart.length, srcField.value.length);
                            srcField.focus();
                            srcField.setSelectionRange(valueStart, valueStart);
                        } else {
                            valueStart = startString;
                            valueEnd = endString;
                            srcField.focus();
                            srcField.setSelectionRange(valueStart, valueStart);
                        }
                        srcField.value = valueStart + inputLetter + valueEnd;
                        setCaretPosition(srcField, valueStart.length + 1);
                        (evt.preventDefault) ? evt.preventDefault() : evt.returnValue = false;
                    }
                } else {
                    return false;
                }
            }
        }
    }
}
function setCaretPosition(elem, caretPos) {
    if (elem != null) {
        if (elem.createTextRange) {
            var nrange = elem.createTextRange();
            range.move('character', caretPoS);
            range.select();
        } else {
            if (elem.selectionStart) {
                elem.focus();
                elem.setSelectionRange(caretPos, caretPos);
            } else
                elem.focus();
        }
    }
}
function setFullName(first, mid, last, fullnm) {
    var full = Trim(Trim(Trim(first.value) + ' ' + Trim(mid.value)) + ' ' + Trim(last.value));
    if (full.length > 30)
        full = full.substring(0, 30);
    fullnm.value = full;
}
function Trim(str) {
    while ('' + str.charAt(0) == ' ')
        str = str.substring(1, str.length);
    while ('' + str.charAt(str.length - 1) == ' ')
        str = str.substring(0, str.length - 1);
    return str;
}
function caps(evt) {
    var keyCode = (window.event) ? evt.keyCode : evt.which;

    if (keyCode > 96 && keyCode < 123) {
        var lKeyCode = eval(event.which);
    }
}
function capsaaa(evt) {
    var keyCode = (window.event) ? evt.keyCode : evt.which;
    alert('aa1');
    if (keyCode > 96 && keyCode < 123) {
        keyCode -= 32;
        alert('aa2');
    }
}
function getElementsByClassNames(node, classname) {
    var a = [];
    var re = new RegExp('(^| )' + classname + '( |$)');
    var els = node.getElementsByTagName("*");
    for (var i = 0, j = els.length; i < j; i++)
        if (re.test(els[i].className)) a.push(els[i]);
    return a;
}
function changeCollorSID() {
    var x = getElementsByClassNames(document.body, 'noBorderKanan')
    for (tu = 0; tu < x.length; tu++) {
        var tr = x[tu].getElementsByTagName("tr");
        for (vf = 0; vf < tr.length; vf++) {
            var td = tr[vf].getElementsByTagName("td");
            var ln = td.length;
            for (row = 0; row < ln; row++) {
                var U = td[row].className;
                if (U = 'nilaiBulanNA') {
                    if (typeof td[row].getElementsByTagName('div')[0] !== 'undefined') {
                        var valuess = td[row].getElementsByTagName('div')[0].innerHTML.replace('&nbsp;', '');
                        if (valuess == 'TB') {
                            td[row].className = 'nilaiBulanTB';
                        }
                        if (valuess == '5') {
                            td[row].className = 'nilaiBulanJelek';
                        }
                        if (valuess == '4') {
                            td[row].className = 'nilaiBulanNormal';
                        }
                        if (valuess == '3') {
                            td[row].className = 'nilaiBulanTengah';
                        }
                        if (valuess == '2') {
                            td[row].className = 'BulanKecil';
                        }
                    }
                }
            }
        }
    }
}