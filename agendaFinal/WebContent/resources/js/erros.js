function InvalidMsg(textbox) {
    if (textbox.value == '') {
        textbox.setCustomValidity('inserir usuario');
    }
    else if (textbox.validity.typeMismatch){
        textbox.setCustomValidity('inserir senha');
    }
    else {
       textbox.setCustomValidity('');
    }
    return true;
}