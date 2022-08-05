// JS Controller WealthIA
// 2022 February 10


function fetchProviderID (value) {

    if(value.trim() == '') {
    
        return false;
    }

    $('#fetch_api').show()

    $.ajax({
        type: "GET",
        data: { },
        url: "http://134.122.106.24/api/v1/clients/fetchProviderUserDetails/" + value,
        success: function (data) {

            // hide comments
            $('#fetch_api').hide()
            
            $('#contactPerson').val(data.CONTACT_NAME)
            $('#providerID').val(data.CLIENT_ID)
         
        },
    });
}