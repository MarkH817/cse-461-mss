//Automatically Generated
module ICC 

open de_jl_notificationlog


one sig intent1__b8pssdudlb5p3e0kv18fppvpaq extends Intent{}{
//  de.jl.notificationlog.ui.AppListActivity: boolean onOptionsItemSelected(android.view.MenuItem)
    sender=de_jl_notificationlog_ui_AppListActivity
	component=de_jl_notificationlog_ui_about_AboutActivity
	action=NoAction
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
	no detailedPaths
}
one sig intent2__uc00vr83l3f0bll95p33e9qsrr extends Intent{}{
//  de.jl.notificationlog.ui.AppListActivity: boolean onOptionsItemSelected(android.view.MenuItem)
    sender=de_jl_notificationlog_ui_AppListActivity
	component=de_jl_notificationlog_ui_about_AboutActivity
	action=NoAction
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
	no detailedPaths
}
one sig intent3__qfl53q8bhu4konqihc8sn5ra09 extends Intent{}{
//  de.jl.notificationlog.ui.AppListActivity: boolean onOptionsItemSelected(android.view.MenuItem)
    sender=de_jl_notificationlog_ui_AppListActivity
	component=de_jl_notificationlog_ui_about_AboutActivity
	action=NoAction
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
	no detailedPaths
}
one sig intent4__653bumdp1cvlvh1ppv4framniu extends Intent{}{
//  de.jl.notificationlog.ui.AppListActivity: boolean onOptionsItemSelected(android.view.MenuItem)
    sender=de_jl_notificationlog_ui_AppListActivity
	component=de_jl_notificationlog_ui_about_AboutActivity
	action=NoAction
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
	no detailedPaths
}


fact {
existingApps.apps = de_jl_notificationlog
}

check privEscal for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 

check InfoLeaksInterApp for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 

check InfoLeaksIntraAppTransitive1 for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 
check InfoLeaksIntraAppTransitive2 for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 
check InfoLeaksIntraAppTransitive3 for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 
check InfoLeaksIntraAppTransitive4 for 1 but exactly 1 Application, exactly 4 Component, exactly 3 IntentFilter, exactly 4 Intent, exactly 0 DetailedPath 


pred generateInfoLeak{
 some GeneratedExp
}
//The exact number of each element is the one shown minus one (except Service & Receiver (=), and DetailedPath (=-2))
run generateInfoLeak for 1 but exactly 2 Application, exactly 3 Activity, exactly 2 Service, exactly 0 Receiver, exactly 4 IntentFilter, exactly 5 Intent, exactly 2 DetailedPath

pred generateActivityLunch{
 some GeneratedExpActivityLunch
}
//The exact number of each element is the one shown minus one (except Service, Receiver & IntentFilter (=))
run generateActivityLunch for 1 but exactly 2 Application, exactly 3 Activity, exactly 2 Service, exactly 0 Receiver, exactly 3 IntentFilter, exactly 5 Intent, exactly 1 DetailedPath


pred generateIntentHijack{
	some GeneratedExpIntentHijack
}
//The exact number of each element is the one shown minus one (except Service & Receiver)
run generateIntentHijack for 1 but exactly 2 Application, exactly 3 Activity, exactly 2 Service, exactly 0 Receiver, exactly 4 IntentFilter, exactly 4 Intent, exactly 1 DetailedPath
