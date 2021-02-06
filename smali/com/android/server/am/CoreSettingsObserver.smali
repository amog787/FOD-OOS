.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static final sDeviceConfigEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 45
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "long_press_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "multi_press_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string/jumbo v2, "time_12_24"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "debug_view_attributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "debug_view_attributes_application_package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_debug_package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_all_angle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_selection_pkgs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_selection_values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_whitelist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string/jumbo v2, "show_angle_in_use_dialog_box"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "enable_gpu_debug_layers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layers_gles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layer_app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "game_driver_all_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_opt_in_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_prerelease_opt_in_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_opt_out_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_blacklist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_whitelist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_blacklists"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_sphal_libraries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 117
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__enable_cursor_drag_from_anywhere"

    const-string/jumbo v4, "widget__enable_cursor_drag_from_anywhere"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__finger_to_cursor_distance"

    const-string/jumbo v4, "widget__finger_to_cursor_distance"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 125
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__enable_insertion_handle_gestures"

    const-string/jumbo v4, "widget__enable_insertion_handle_gestures"

    move-object v1, v7

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 129
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__insertion_handle_delta_height"

    const-string/jumbo v4, "widget__insertion_handle_delta_height"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 126
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 133
    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__insertion_handle_opacity"

    const-string/jumbo v4, "widget__insertion_handle_opacity"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 137
    const-string/jumbo v9, "widget"

    const-string v10, "CursorControlFeature__enable_new_magnifier"

    const-string/jumbo v11, "widget__enable_new_magnifier"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 141
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__magnifier_zoom_factor"

    const-string/jumbo v4, "widget__magnifier_zoom_factor"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 138
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 145
    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "CursorControlFeature__magnifier_aspect_ratio"

    const-string/jumbo v4, "widget__magnifier_aspect_ratio"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 154
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 155
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    .line 157
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 158
    return-void
.end method

.method private beginObserveCoreSettings()V
    .locals 6

    .line 180
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 182
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 188
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 192
    :cond_1
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 194
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 198
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v0, "deviceConfigNamespaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 200
    .local v2, "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 201
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 202
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs;

    invoke-direct {v5, p0}, Lcom/android/server/am/-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs;-><init>(Lcom/android/server/am/CoreSettingsObserver;)V

    .line 201
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 204
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    :cond_3
    goto :goto_3

    .line 207
    :cond_4
    return-void
.end method

.method private populateSettingsFromDeviceConfig()V
    .locals 8

    .line 241
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 242
    .local v1, "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;, "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry<*>;"
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 243
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "defaultValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 245
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v2    # "defaultValue":Ljava/lang/String;
    goto/16 :goto_2

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 247
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 248
    .local v2, "defaultValue":I
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 249
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 248
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    .end local v2    # "defaultValue":I
    goto :goto_2

    :cond_1
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    .line 251
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 252
    .local v2, "defaultValue":F
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 253
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    .line 252
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 254
    .end local v2    # "defaultValue":F
    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    .line 255
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 256
    .local v2, "defaultValue":J
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 257
    invoke-static {v6, v7, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 256
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .end local v2    # "defaultValue":J
    goto :goto_1

    .line 258
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    .line 259
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 260
    .local v2, "defaultValue":Z
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 261
    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 260
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 258
    .end local v2    # "defaultValue":Z
    :cond_4
    :goto_1
    nop

    .line 263
    .end local v1    # "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;, "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry<*>;"
    :goto_2
    goto/16 :goto_0

    .line 264
    :cond_5
    return-void
.end method

.method private sendCoreSettings()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->populateSettingsFromDeviceConfig()V

    .line 176
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public synthetic lambda$beginObserveCoreSettings$0$CoreSettingsObserver(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1
    .param p1, "prop"    # Landroid/provider/DeviceConfig$Properties;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 166
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 167
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 8
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 211
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 212
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 213
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "setting":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v4, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v4, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .restart local v4    # "value":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_2

    .line 223
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 224
    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 227
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_3

    .line 228
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_3
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 231
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 232
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 233
    :cond_5
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    .line 234
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v3    # "setting":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_2
    goto :goto_0

    .line 237
    :cond_7
    return-void
.end method
