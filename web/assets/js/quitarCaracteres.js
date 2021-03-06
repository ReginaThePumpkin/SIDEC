//Caracteres validos
const NOMBRE = 'áéíóúÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ. ' ;
const CURP = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' ;
const NUMERO = '0123456789' ;
const CORREO = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@.' ;
const MATRICULA = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' ;
const TEXTO = '0123456789áéíóúÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ.,;()\'\"- ' ;
const DECIMAL = '0123456789.' ;
const MEDICA = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-';
const NOCALLE = '01234567890S/N';

//Se siguio la siguiente norma para la contraseña
//https://help.pearsoncmg.com/sms4/help/es/Content/acceptable_chars_help.html#:~:text=Reglas%20para%20nombres%20de%20inicio%20de%20sesi%C3%B3n%20y%20contrase%C3%B1as&text=Su%20contrase%C3%B1a%20debe%20tener%20al,que%20se%20encuentran%20en%20diccionarios.
const PASSWORD = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@.-_*' ;

function ponVerificadores(){
    /*
    Atributos que colocara a cada input
    para eliminar caracteres no validos
    en cada campo
    */
    var att = ["onkeyup", "onkeypress", "onkeydown"];

    //Llamo todos los inputs y textarea de esa pagina
    var inputs = document.getElementsByTagName("input") ;
    var textareas = document.getElementsByTagName("textarea") ;

    //El valor que tendra cada atributo
    const val = "this.value = quita(this.value, this.name)" ;

    //console.log(inputs);
    //console.log(textareas);

    //Asigno los atributos a cada input
    for(var i=0; i<inputs.length; i++)
        for(var j=0; j<att.length; j++)
            inputs[i].setAttribute(att[j], val);

    //Asigno los atributos a cada textarea
    for(var i=0; i<textareas.length; i++)
        for(var j=0; j<att.length; j++)
            textareas[i].setAttribute(att[j], val);
}

function quita(string, tipo){
    var out = '' ;
    var ver = '' ;

    switch(tipo){
        case 'nombre':
        case 'apellido1':
        case 'apellido2':
        case 'tutorNombre':
        case 'tutorApellido1':
        case 'tutorApellido2':
            ver = NOMBRE ;
            break;

        case 'curp':
            string = string.toUpperCase() ;
            ver = CURP ;
            break;

        case 'telefono':
        case 'cicloEscolar':
        case 'folio':
        case 'numeroSeguro':
        case 'añoInicio':
        case 'añoFin':
        case 'codigoPostal':
        case 'tutorTelefono':
        case 'tutorTelTrabajo':
            ver = NUMERO;
            break;

        case 'correo':
        case 'tutorCorreo':
            ver = CORREO ;
            break;

        case 'matricula':
        case 'cct':
        case 'matriculaEst':
            ver = MATRICULA ;
            break;

        case 'observaciones':
        case 'diploma':
        case 'reconocimiento':
        case 'certificacion':
        case 'mencion':
        case 'canalizacion':
        case 'diagPsico':
        case 'enferCronicas2':
        case 'enferHereditarias2':
        case 'alergias2':
        case 'discapacidades2':
        case 'calle':
        case 'colonia':
        case 'municipio':
            ver = TEXTO ;
            break;

        case 'password':
            ver = PASSWORD ;
            break ;

        case 'unidadMedica':
            ver = MEDICA ;
            break;

        case 'peso':
        case 'estatura':
            ver = DECIMAL ;
            break;

        case 'interior':
        case 'exterior':
            ver = NOCALLE ;
            break;

        default:
            return string ;
    }

    for (var i=0; i<string.length; i++)
        if (ver.indexOf(string.charAt(i)) != -1)
            out += string.charAt(i);

    return out ;
}
function habilita(id, id_element){
    /*
    * id: El id del input tipo checkbox
    * id_element: El id del textarea que estara cambiando el readonly
    * */

    var hab = document.getElementById(id).checked;
    var area = document.getElementById(id_element);

    if(!hab)
        area.setAttribute('readonly', 'readonly');
    else
        area.removeAttribute('readonly');
}

function habilitaRadio(idInput, idText, bandera){
    var select = document.getElementById(idInput);
    var area = document.getElementById(idText);

    if(bandera){
        area.removeAttribute('readonly');
        select.removeAttribute('readonly');
    }else{
        area.setAttribute('readonly', 'readonly');
        select.setAttribute('readonly', 'readonly');
    }

}
