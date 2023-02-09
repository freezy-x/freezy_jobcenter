exports.ox_target:addSphereZone({
    coords = vec3(-261.25, -964.62, 31.22),
    size = vec3(2, 2, 2),
    rotation = 330,
    debug = false,
    options = {
        {
            name = 'open_jobcenter',
            event = 'freezy_jobcenter:open',
            icon = 'fas fa-sign-in-alt',
            label = 'Register'
        }
    }
})

AddEventHandler('freezy_jobcenter:setjob1', function(job)
	TriggerServerEvent("freezy_jobcenter:setjob1")
end)

AddEventHandler('freezy_jobcenter:setjob2', function(job)
	TriggerServerEvent("freezy_jobcenter:setjob2")
end)


AddEventHandler('freezy_jobcenter:setjob3', function(job)
	TriggerServerEvent("freezy_jobcenter:setjob3")
end)



RegisterNetEvent('freezy_jobcenter:open', function(job)
    lib.progressBar({
		duration = 5000,
		label = 'You register at the office..',
		position = 'bottom',
		useWhileDead = false,
		canCancel = false,
		anim = {
			dict = 'misscarsteal4@actor',
			clip = 'actor_berating_loop'
		},
		disable = {
			move = true,
			car = false
		},
	})
    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'Job center',
        onExit = function()
        end,
        options = {
            {
                title = 'POLICE JOB',
                icon = 'fa-solid fa-handcuffs',
                onSelect = function(args)
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'freezy_jobcenter:setjob1'     
            },
            {
                title = 'TRUCKER JOB',
                icon = 'fa-solid fa-truck',
                onSelect = function(args)
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'freezy_jobcenter:setjob2'
            },
            {
                title = 'POOLCLEANER JOB',
                icon = 'fas fa-hands-wash',
                onSelect = function(args)
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'freezy_jobcenter:setjob3'
            }
        }
    })
    lib.showContext('jobcenter_menu')
end)