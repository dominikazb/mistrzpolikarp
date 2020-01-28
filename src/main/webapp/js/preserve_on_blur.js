 Selectize.define( 'preserve_on_blur', function( options ) {
    var self = this;

    options.text = options.text || function(option) {
        return option[this.settings.labelField];
    };
    
    this.onBlur = ( function( e ) {
        var original = self.onBlur;  
        
        return function( e ) {
            // Capture the current input value
            var $input = this.$control_input;
            var inputValue = $input.val();
            
            // Do the default actions
            original.apply( this, e );
            
            // Set the value back                    
            this.setTextboxValue( inputValue );
        };                                
    } )();
} );