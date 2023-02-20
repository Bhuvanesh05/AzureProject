declare -a classes=(
						 "ContactSearch.cls"
                        "ContactSearch.cls-meta.xml"
                        "DailyLeadProcessor.cls"
                        "DailyLeadProcessor.cls-meta.xml"
                        "DailyLeadProcessorTest.cls"
                        "DailyLeadProcessorTest.cls-meta.xml"
                        "ContactAndLeadSearch.cls"
                        "ContactAndLeadSearch.cls-meta.xml"

					)

declare -a components=(
                        
                    )

declare -a pages=(
					# Add  Visualforce Page file name with .page file extension and within ""
				 )

declare -a triggers=(	# Add resource file name with trigger file extension and within ""

					)

declare -a resources=(
                        # Add resource file name with .resource file extension and within ""
					)

declare -a emails=(

                )

declare -a emailFolders=(
                    )
                     
declare -a tabs=(
                    # Add tab file name with .tab file extension and within ""
                
                ) 

declare -a profile=(
						
					)

declare -a layouts=(
						# Add Layout file name with .layout file extension within ""

                        
					)	 

declare -a objects=(
						# Add Object file name with .object file extension within ""
                    

				   )

declare -a customMetadatas=(


				   )


declare -a lwcComponents=(
							# Add LWC component file name within ""
				   )

declare -a flexipages=(
						# Add Flexi Page file name with .flexipage file extenstion within ""

	        )		
declare -a aura=(
					# Add aura component file name within ""
                    

			)

declare -a reportTypes=(
                            # Add report type file name with .reportType extension within ""
                            
)
declare -a reports=(
                        # Add salesforce standard report file name with .report file extension within ""
            )
declare -a reports1=(
            )

declare -a flows=(

            )

declare -a permissionsets=(
				# Add permission set file name with .permissionset within ""

		)

declare -a globalValueSets=(


)

declare -a pathAssistants=(
	    )
declare -a settings=(
)

declare -a group=(


)

declare -a applications=(
                    )

declare -a quickActions=(


)

declare -a cachePartitions=(
)

declare -a dashboards=(

)

declare -a workflows=(


                    )

declare -a sharingRules=(

)

declare -a approvalProcesses=(
                    )
declare -a customPermissions=(
                            # Add custom permission file name with .customPermission file extension within ""
                     )
declare -a labels=(
)
declare -a notificationtypes=(
)

declare -a messageChannels=(

)

declare -a staticresources=(
    
    
)

for messageChannels in "${messageChannels[@]}"
do
	cp force-app/main/default/messageChannels/$messageChannels delta/force-app/main/default/messageChannels
done

for c in "${classes[@]}"
do
	cp force-app/main/default/classes/$c delta/force-app/main/default/classes
done

<<clCmt
for c in force-app/main/default/classes/GCCS_Sam*.cls
do
	cp $c delta/force-app/main/default/classes
done

for cm in force-app/main/default/classes/GCCS_Sam*.cls-meta.xml
do
	cp $cm delta/force-app/main/default/classes
done
clCmt


for co in "${components[@]}"
do
    cp force-app/main/default/components/$co delta/force-app/main/default/components
done

for da in "${dashboards[@]}"
do
    cp force-app/main/default/dashboards/$da delta/force-app/main/default/dashboards
done

for p in "${pages[@]}"
do
    cp force-app/main/default/pages/$p delta/force-app/main/default/pages
done

for t in "${triggers[@]}"
do
    cp force-app/main/default/triggers/$t delta/force-app/main/default/triggers
done

for staticresources in "${staticresources[@]}"
do
    cp force-app/main/default/staticresources/$staticresources delta/force-app/main/default/staticresources
done

for tb in "${tabs[@]}"
do
    cp force-app/main/default/tabs/$tb delta/force-app/main/default/tabs
done

for ((i = 0; i < ${#profile[@]}; i++))
do
    cp force-app/main/default/profiles/"${profile[$i]}" delta/force-app/main/default/profiles
done

for layouts in "${layouts[@]}"
do
    cp force-app/main/default/layouts/"$layouts" delta/force-app/main/default/layouts
done

for o in "${objects[@]}"
do
    cp force-app/main/default/objects/$o delta/force-app/main/default/objects
done

for aura in "${aura[@]}"
do
    mkdir delta/force-app/main/default/aura/$aura
    cp force-app/main/default/aura/$aura/* delta/force-app/main/default/aura/$aura/
done

for rp in "${reportTypes[@]}"
do
    cp force-app/main/default/reportTypes/$rp delta/force-app/main/default/reportTypes
done

for rf in "${reports[@]}"
do
    cp force-app/main/default/reports/$rf delta/force-app/main/default/reports/unfiled\$public
done

for gs in "${globalValueSets[@]}"
do 
    cp force-app/main/default/globalValueSets/$gs delta/force-app/main/default/globalValueSets/
done

for gp in "${group[@]}"
do 
    cp force-app/main/default/groups/$gp delta/force-app/main/default/groups/
done

for permissionset in "${permissionsets[@]}"
do
    cp force-app/main/default/permissionsets/$permissionset delta/force-app/main/default/permissionsets
done

for pa in "${pathAssistants[@]}"
do
	cp force-app/main/default/pathAssistants/$pa delta/force-app/main/default/pathAssistants
done

for s in "${settings[@]}"
do
	cp force-app/main/default/settings/$s delta/force-app/main/default/settings
done

for cm in "${customMetadatas[@]}"
do
    cp force-app/main/default/customMetadata/$cm delta/force-app/main/default/customMetadata
done

 for app in "${applications[@]}"
 do
    cp force-app/main/default/applications/$app delta/force-app/main/default/applications
 done

 for flows in "${flows[@]}"
 do
    cp force-app/main/default/flows/$flows delta/force-app/main/default/flows
 done

 for lwcComponent in "${lwcComponents[@]}"
  do
    mkdir delta/force-app/main/default/lwc/$lwcComponent
    cp force-app/main/default/lwc/$lwcComponent/* delta/force-app/main/default/lwc/$lwcComponent/
  done

for flexipages in "${flexipages[@]}"
do
    cp force-app/main/default/flexipages/$flexipages delta/force-app/main/default/flexipages
done 

for quickActions in "${quickActions[@]}"
do
    cp force-app/main/default/quickActions/$quickActions delta/force-app/main/default/quickActions
done

for sr in "${sharingRules[@]}"
do
    cp force-app/main/default/sharingRules/$sr delta/force-app/main/default/sharingRules
done

for c in "${cachePartitions[@]}"
do
    cp force-app/main/default/cachePartitions/$c delta/force-app/main/default/cachePartitions
done

for workFlow in "${workflows[@]}"
do
    cp force-app/main/default/workflows/$workFlow delta/force-app/main/default/workflows
done

for e in "${emails[@]}"
do
    cp force-app/main/default/email/$e/** delta/force-app/main/default/email
done

for approvalProcess in "${approvalProcesses[@]}"
do
    cp force-app/main/default/approvalProcesses/$approvalProcess delta/force-app/main/default/approvalProcesses
done

for cp in "${customPermissions[@]}"
do
    cp force-app/main/default/customPermissions/$cp delta/force-app/main/default/customPermissions
done
for l in "${labels[@]}"
do
    cp force-app/main/default/labels/$l delta/force-app/main/default/labels
done
for nt in "${notificationtypes[@]}"
do
	cp force-app/main/default/notificationtypes/$nt delta/force-app/main/default/notificationtypes
done