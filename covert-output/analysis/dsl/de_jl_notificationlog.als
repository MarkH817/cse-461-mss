//Automatically Generated
open appDeclaration

one sig de_jl_notificationlog extends Application{}{
	no usesPermissions
	no appPermissions
	no APIPermissions
}


one sig de_jl_notificationlog_service_AccessibilityService extends Service{}{
	app in de_jl_notificationlog
	intentFilter = IntentFilter1
	no detailedPaths
	compPermissions = BIND_ACCESSIBILITY_SERVICE
}

one sig de_jl_notificationlog_service_NotificationListenerService extends Service{}{
	app in de_jl_notificationlog
	intentFilter = IntentFilter2
	no detailedPaths
	compPermissions = BIND_NOTIFICATION_LISTENER_SERVICE
}

one sig de_jl_notificationlog_ui_AppListActivity extends Activity{}{
	app in de_jl_notificationlog
	intentFilter = IntentFilter3
	no detailedPaths
	no compPermissions
}

one sig de_jl_notificationlog_ui_about_AboutActivity extends Activity{}{
	app in de_jl_notificationlog
	no intentFilter
	no detailedPaths
	no compPermissions
}


one sig IntentFilter1 extends IntentFilter{}{
	actions=android_accessibilityservice_AccessibilityService_A
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
}
one sig IntentFilter2 extends IntentFilter{}{
	actions=android_service_notification_NotificationListenerService_A
	categories=android_intent_category_DEFAULT_C
	dataType=NoMIMEType
	dataScheme=NoScheme
}
one sig IntentFilter3 extends IntentFilter{}{
	actions=android_intent_action_MAIN_A
	categories=android_intent_category_LAUNCHER_C
	dataType=NoMIMEType
	dataScheme=NoScheme
}


fact{
#de_jl_notificationlog.~app = 4 
}

pred show(){
#Application=1
#Component=4
#IntentFilter=3
#DetailedPath=0
#DataScheme=2
#existingApps.apps=1
no Intent
}
run show
