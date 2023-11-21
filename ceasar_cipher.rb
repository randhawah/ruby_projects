def caesar_cipher(message, shift)
    encrypted = ""
    message.each_byte do |c|
        rotation= c
        c.between?(65,90) || c.between?(97,122)? rotation += shift : rotation
        if rotation.between?(65,90) || rotation.between?(97,122)
            rotation
        elsif rotation > 122
            rotation -= 26
        elsif rotation > 90
            rotation -= 26
        end
        encrypted += rotation.chr
    end
    puts encrypted
end
caesar_cipher("What a string!", 5)
#"Bmfy f xywnsl!"