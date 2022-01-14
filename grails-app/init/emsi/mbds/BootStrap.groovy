package emsi.mbds

import emsi.mbds.Illustration
import emsi.mbds.Role
import emsi.mbds.SaleAd
import emsi.mbds.User
import emsi.mbds.UserRole

class BootStrap {

    def init = { servletContext ->
        def roleAdmin = new Role(authority: "ROLE_ADMIN").save()
        def roleUser = new Role(authority: "ROLE_CLIENT").save()
        def roleModo = new Role(authority: "ROLE_MODERATEUR").save()

        def userAdmin = new User(username: "admin", password: "1234").save()
        def userClient = new User(username: "CLEINT", password: "1234").save()
        def userModo = new User(username: "modE", password: "1234" ).save()

        UserRole.create(userAdmin, roleAdmin, true)
        UserRole.create(userClient, roleUser, true)
        UserRole.create(userModo,roleModo, true )



        (1..4).each{Integer Index ->
            def annonceInstance = new SaleAd(title: "MOUAD"+Index,
                    description: "smart phone" + Index ,
                    longDescription: "iPhone 13 Pro Max (2021–present)" + Index,
                    price: 200F*Index)
            (1..1).each{
                annonceInstance.addToIllustrations( new Illustration(filename: "placeholder_uca.jpg" ))
            }
            userClient.addToSaleAds(annonceInstance)
        }
        userClient.save(flush:true, failOnError: true)

    }
    def destroy = {
    }
}
