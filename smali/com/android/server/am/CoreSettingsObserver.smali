.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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
    .locals 3

    .line 37
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "long_press_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "multi_press_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string/jumbo v2, "time_12_24"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "debug_view_attributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "debug_view_attributes_application_package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_debug_package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_all_angle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_selection_pkgs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_gl_driver_selection_values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "angle_whitelist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string/jumbo v2, "show_angle_in_use_dialog_box"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "enable_gpu_debug_layers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layers_gles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "gpu_debug_layer_app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "game_driver_all_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_opt_in_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_prerelease_opt_in_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_opt_out_apps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_blacklist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_whitelist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_blacklists"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string v2, "game_driver_sphal_libraries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 94
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 95
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    .line 97
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 98
    return-void
.end method

.method private beginObserveCoreSettings()V
    .locals 5

    .line 119
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

    .line 120
    .local v1, "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 125
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

    .line 126
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 131
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

    .line 132
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 136
    :cond_2
    return-void
.end method

.method private sendCoreSettings()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 109
    return-void

    .line 108
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 140
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 141
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

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .local v3, "setting":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v4, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v4, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 149
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .restart local v4    # "value":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_2

    .line 152
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 156
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_3

    .line 157
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 158
    :cond_3
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 160
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 161
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 162
    :cond_5
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    .line 163
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v3    # "setting":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_2
    goto :goto_0

    .line 166
    :cond_7
    return-void
.end method
