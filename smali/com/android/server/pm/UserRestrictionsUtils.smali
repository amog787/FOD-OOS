.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 78
    const-string/jumbo v0, "no_config_wifi"

    const-string/jumbo v1, "no_config_locale"

    const-string/jumbo v2, "no_modify_accounts"

    const-string/jumbo v3, "no_install_apps"

    const-string/jumbo v4, "no_uninstall_apps"

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const-string/jumbo v8, "no_config_bluetooth"

    const-string/jumbo v9, "no_bluetooth"

    const-string/jumbo v10, "no_bluetooth_sharing"

    const-string/jumbo v11, "no_usb_file_transfer"

    const-string/jumbo v12, "no_config_credentials"

    const-string/jumbo v13, "no_remove_user"

    const-string/jumbo v14, "no_remove_managed_profile"

    const-string/jumbo v15, "no_debugging_features"

    const-string/jumbo v16, "no_config_vpn"

    const-string/jumbo v17, "no_config_date_time"

    const-string/jumbo v18, "no_config_tethering"

    const-string/jumbo v19, "no_network_reset"

    const-string/jumbo v20, "no_factory_reset"

    const-string/jumbo v21, "no_add_user"

    const-string/jumbo v22, "no_add_managed_profile"

    const-string v23, "ensure_verify_apps"

    const-string/jumbo v24, "no_config_cell_broadcasts"

    const-string/jumbo v25, "no_config_mobile_networks"

    const-string/jumbo v26, "no_control_apps"

    const-string/jumbo v27, "no_physical_media"

    const-string/jumbo v28, "no_unmute_microphone"

    const-string/jumbo v29, "no_adjust_volume"

    const-string/jumbo v30, "no_outgoing_calls"

    const-string/jumbo v31, "no_sms"

    const-string/jumbo v32, "no_fun"

    const-string/jumbo v33, "no_create_windows"

    const-string/jumbo v34, "no_system_error_dialogs"

    const-string/jumbo v35, "no_cross_profile_copy_paste"

    const-string/jumbo v36, "no_outgoing_beam"

    const-string/jumbo v37, "no_wallpaper"

    const-string/jumbo v38, "no_safe_boot"

    const-string v39, "allow_parent_profile_app_linking"

    const-string/jumbo v40, "no_record_audio"

    const-string/jumbo v41, "no_camera"

    const-string/jumbo v42, "no_run_in_background"

    const-string/jumbo v43, "no_data_roaming"

    const-string/jumbo v44, "no_set_user_icon"

    const-string/jumbo v45, "no_set_wallpaper"

    const-string/jumbo v46, "no_oem_unlock"

    const-string v47, "disallow_unmute_device"

    const-string/jumbo v48, "no_autofill"

    const-string/jumbo v49, "no_content_capture"

    const-string/jumbo v50, "no_content_suggestions"

    const-string/jumbo v51, "no_user_switch"

    const-string/jumbo v52, "no_unified_password"

    const-string/jumbo v53, "no_config_location"

    const-string/jumbo v54, "no_airplane_mode"

    const-string/jumbo v55, "no_config_brightness"

    const-string/jumbo v56, "no_sharing_into_profile"

    const-string/jumbo v57, "no_ambient_display"

    const-string/jumbo v58, "no_config_screen_timeout"

    const-string/jumbo v59, "no_printing"

    const-string v60, "disallow_config_private_dns"

    filled-new-array/range {v0 .. v60}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 145
    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 153
    const-string/jumbo v2, "no_bluetooth"

    const-string/jumbo v3, "no_usb_file_transfer"

    const-string/jumbo v4, "no_config_tethering"

    const-string/jumbo v5, "no_network_reset"

    const-string/jumbo v6, "no_factory_reset"

    const-string/jumbo v7, "no_add_user"

    const-string/jumbo v8, "no_config_cell_broadcasts"

    const-string/jumbo v9, "no_config_mobile_networks"

    const-string/jumbo v10, "no_physical_media"

    const-string/jumbo v11, "no_sms"

    const-string/jumbo v12, "no_fun"

    const-string/jumbo v13, "no_safe_boot"

    const-string/jumbo v14, "no_create_windows"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 174
    const-string/jumbo v1, "no_user_switch"

    const-string v2, "disallow_config_private_dns"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 182
    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v3, "no_oem_unlock"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 192
    const-string/jumbo v3, "no_adjust_volume"

    const-string/jumbo v4, "no_bluetooth_sharing"

    const-string/jumbo v5, "no_config_date_time"

    const-string/jumbo v6, "no_system_error_dialogs"

    const-string/jumbo v7, "no_run_in_background"

    const-string/jumbo v8, "no_unmute_microphone"

    const-string v9, "disallow_unmute_device"

    const-string/jumbo v10, "no_camera"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 207
    const-string/jumbo v0, "no_airplane_mode"

    const-string/jumbo v1, "no_config_date_time"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 218
    const-string/jumbo v2, "no_config_bluetooth"

    const-string/jumbo v3, "no_config_location"

    const-string/jumbo v4, "no_config_wifi"

    const-string/jumbo v5, "no_content_capture"

    const-string/jumbo v6, "no_content_suggestions"

    const-string/jumbo v7, "no_debugging_features"

    const-string/jumbo v8, "no_share_location"

    const-string/jumbo v9, "no_outgoing_calls"

    const-string/jumbo v10, "no_camera"

    const-string/jumbo v11, "no_bluetooth"

    const-string/jumbo v12, "no_bluetooth_sharing"

    const-string/jumbo v13, "no_config_cell_broadcasts"

    const-string/jumbo v14, "no_config_mobile_networks"

    const-string/jumbo v15, "no_config_tethering"

    const-string/jumbo v16, "no_data_roaming"

    const-string/jumbo v17, "no_safe_boot"

    const-string/jumbo v18, "no_sms"

    const-string/jumbo v19, "no_usb_file_transfer"

    const-string/jumbo v20, "no_physical_media"

    const-string/jumbo v21, "no_unmute_microphone"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 249
    const-string/jumbo v1, "no_bluetooth_sharing"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 256
    const-string v1, "ensure_verify_apps"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .line 526
    const-string v0, "airplane_mode_on"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 527
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 529
    .local v2, "id":J
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v5, "no_safe_boot"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v5, "no_share_location"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v8

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v5, "no_data_roaming"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v9

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "no_config_location"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "no_run_in_background"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "no_uninstall_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xc

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "no_airplane_mode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_a
    const-string v5, "ensure_verify_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_b
    const-string/jumbo v5, "no_control_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :sswitch_c
    const-string/jumbo v5, "no_ambient_display"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    const/16 v4, 0x9

    :goto_0
    const-string v5, "0"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 665
    :pswitch_0
    :try_start_2
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 667
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllNonSystemPackageSuspensions(I)V

    .line 668
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllDistractingPackageRestrictions(I)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->flushPackageRestrictions(I)V

    goto/16 :goto_5

    .line 656
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :pswitch_1
    if-eqz p3, :cond_6

    .line 657
    nop

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "location_global_kill_switch"

    .line 657
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 635
    :pswitch_2
    if-eqz p3, :cond_6

    .line 636
    nop

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "doze_enabled"

    .line 636
    invoke-static {v0, v4, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 639
    nop

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "doze_always_on"

    .line 639
    invoke-static {v0, v4, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 642
    nop

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "doze_pulse_on_pick_up"

    .line 642
    invoke-static {v0, v4, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 645
    nop

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "doze_pulse_on_long_press"

    .line 645
    invoke-static {v0, v4, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 648
    nop

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "doze_pulse_on_double_tap"

    .line 648
    invoke-static {v0, v4, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_5

    .line 619
    :pswitch_3
    if-eqz p3, :cond_6

    .line 620
    nop

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 620
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    move v4, v8

    .line 623
    .local v4, "airplaneMode":Z
    if-eqz v4, :cond_2

    .line 624
    nop

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 624
    invoke-static {v5, v0, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "state"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 632
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "airplaneMode":Z
    :cond_2
    goto/16 :goto_5

    .line 613
    :pswitch_4
    nop

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "safe_boot_disallowed"

    .line 616
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    .line 613
    :goto_2
    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    goto/16 :goto_5

    .line 596
    :pswitch_5
    if-eqz p3, :cond_6

    .line 597
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    .local v0, "currentUser":I
    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_4

    .line 600
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v9, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    goto :goto_3

    .line 601
    :catch_0
    move-exception v4

    .line 602
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "id":J
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "userId":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "newValue":Z
    throw v5

    .line 605
    .end local v0    # "currentUser":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "id":J
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "userId":I
    .restart local p2    # "key":Ljava/lang/String;
    .restart local p3    # "newValue":Z
    :cond_4
    :goto_3
    goto/16 :goto_5

    .line 591
    :pswitch_6
    invoke-static {p0, p1, v7, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 594
    goto/16 :goto_5

    .line 583
    :pswitch_7
    invoke-static {p0, p1, v6, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 586
    goto :goto_5

    .line 575
    :pswitch_8
    if-eqz p3, :cond_6

    .line 576
    nop

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "verifier_verify_adb_installs"

    const-string v5, "1"

    .line 576
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_5

    .line 561
    :pswitch_9
    if-eqz p3, :cond_6

    .line 564
    if-nez p1, :cond_6

    .line 565
    const-string v0, "adb_enabled"

    invoke-static {v1, v0, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 568
    const-string v0, "adb_wifi_enabled"

    invoke-static {v1, v0, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_5

    .line 553
    :pswitch_a
    if-eqz p3, :cond_6

    .line 554
    const-string/jumbo v0, "location_mode"

    invoke-static {v1, v0, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    .line 531
    :pswitch_b
    if-eqz p3, :cond_6

    .line 535
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 537
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 538
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 539
    .local v4, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v6, "data_roaming"

    if-eqz v4, :cond_5

    .line 540
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 541
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 541
    invoke-static {v1, v9, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 544
    nop

    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_4

    .line 548
    :cond_5
    invoke-static {v1, v6, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 550
    nop

    .line 673
    .end local v0    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    return-void

    .line 673
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x57f0a463 -> :sswitch_c
        -0x52b3922e -> :sswitch_b
        -0x4e6d1409 -> :sswitch_a
        -0x444ddeb2 -> :sswitch_9
        -0x4080af8e -> :sswitch_8
        -0x646213 -> :sswitch_7
        0x171409a1 -> :sswitch_6
        0x2afb8ad6 -> :sswitch_5
        0x339f9994 -> :sswitch_4
        0x375d2642 -> :sswitch_3
        0x3b5af253 -> :sswitch_2
        0x414d6f66 -> :sswitch_1
        0x68f319ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 494
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 496
    .local v2, "newValue":Z
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 498
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_0

    .line 499
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 501
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_0
    goto :goto_0

    .line 502
    :cond_1
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 464
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 465
    return v0

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 470
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 471
    return v2

    .line 473
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 474
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 475
    return v2

    .line 477
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 479
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_5

    .line 480
    return v2

    .line 482
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 483
    :cond_6
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 416
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 417
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 419
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0
.end method

.method public static canProfileOwnerOfOrganizationOwnedDeviceChange(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    .line 426
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 427
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 426
    :goto_1
    return v0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;

    .line 388
    new-instance v0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "restriction"    # Ljava/lang/String;

    .line 377
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .line 828
    const/4 v0, 0x1

    .line 829
    .local v0, "noneSet":Z
    if-eqz p2, :cond_2

    .line 830
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 831
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const/4 v0, 0x0

    .line 835
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 836
    :cond_1
    if-eqz v0, :cond_3

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    :cond_3
    :goto_1
    return-void
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method private static getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userRestriction"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .line 885
    if-nez p3, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 886
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 885
    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 885
    :goto_1
    return v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;

    .line 369
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "restrictionOwnerType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 442
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 443
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 446
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 447
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 448
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 442
    :goto_1
    return v0
.end method

.method public static isLocal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "restrictionOwnerType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 456
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 679
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 682
    .local v0, "mUserManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 683
    .local v1, "checkAllUser":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "screen_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "install_non_market_apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "auto_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "always_on_vpn_lockdown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v2, "location_global_kill_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "auto_time_zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "private_dns_specifier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "airplane_mode_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v2, "private_dns_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v2, "screen_off_timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v2, "safe_boot_disallowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v2, "screen_brightness_float"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "doze_pulse_on_long_press"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "doze_always_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_11
    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_12
    const-string v2, "always_on_vpn_app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_13
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto :goto_1

    :sswitch_14
    const-string v2, "adb_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_15
    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_16
    const-string v2, "doze_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_17
    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_18
    const-string/jumbo v2, "location_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_19
    const-string v2, "adb_wifi_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v5, "1"

    const-string/jumbo v6, "no_config_location"

    const-string v7, "0"

    const/16 v8, 0x3e8

    packed-switch v2, :pswitch_data_0

    .line 810
    const-string v2, "data_roaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 811
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 812
    return v4

    .line 804
    :pswitch_0
    if-ne p4, v8, :cond_1

    .line 805
    return v4

    .line 807
    :cond_1
    const-string v2, "disallow_config_private_dns"

    .line 808
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 796
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1
    if-ne p4, v8, :cond_2

    .line 797
    return v4

    .line 799
    :cond_2
    const-string/jumbo v2, "no_config_screen_timeout"

    .line 800
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 789
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_2
    if-ne p4, v8, :cond_3

    .line 790
    return v4

    .line 792
    :cond_3
    const-string/jumbo v2, "no_config_date_time"

    .line 793
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 781
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_3
    if-ne p4, v8, :cond_4

    .line 782
    return v4

    .line 784
    :cond_4
    const-string/jumbo v2, "no_config_brightness"

    .line 785
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 771
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 772
    return v4

    .line 774
    :cond_5
    const-string/jumbo v2, "no_config_location"

    .line 775
    .restart local v2    # "restriction":Ljava/lang/String;
    const/4 v1, 0x1

    .line 776
    goto/16 :goto_3

    .line 764
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 765
    return v4

    .line 767
    :cond_6
    const-string/jumbo v2, "no_ambient_display"

    .line 768
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 753
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 754
    return v4

    .line 756
    :cond_7
    const-string/jumbo v2, "no_airplane_mode"

    .line 757
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 746
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 747
    return v4

    .line 749
    :cond_8
    const-string/jumbo v2, "no_safe_boot"

    .line 750
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_3

    .line 738
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_8
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 739
    .local v2, "appId":I
    if-eq v2, v8, :cond_a

    if-nez v2, :cond_9

    goto :goto_2

    .line 742
    :cond_9
    const-string/jumbo v3, "no_config_vpn"

    .line 743
    .local v3, "restriction":Ljava/lang/String;
    move-object v2, v3

    goto :goto_3

    .line 740
    .end local v3    # "restriction":Ljava/lang/String;
    :cond_a
    :goto_2
    return v4

    .line 731
    .end local v2    # "appId":I
    :pswitch_9
    const-string/jumbo v2, "no_config_mobile_networks"

    .line 732
    .local v2, "restriction":Ljava/lang/String;
    goto :goto_3

    .line 724
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 725
    return v4

    .line 727
    :cond_b
    const-string v2, "ensure_verify_apps"

    .line 728
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_3

    .line 717
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 718
    return v4

    .line 720
    :cond_c
    const-string/jumbo v2, "no_debugging_features"

    .line 721
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_3

    .line 709
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 710
    return v4

    .line 712
    :cond_d
    const-string/jumbo v2, "no_install_unknown_sources"

    .line 713
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_3

    .line 696
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_d
    nop

    .line 697
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 696
    invoke-virtual {v0, v6, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eq p4, v8, :cond_e

    .line 699
    return v3

    .line 700
    :cond_e
    if-eqz p3, :cond_f

    const-string v2, "-"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 703
    return v4

    .line 705
    :cond_f
    const-string/jumbo v2, "no_share_location"

    .line 706
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_3

    .line 685
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_e
    nop

    .line 686
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 685
    invoke-virtual {v0, v6, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eq p4, v8, :cond_10

    .line 688
    return v3

    .line 689
    :cond_10
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 690
    return v4

    .line 692
    :cond_11
    const-string/jumbo v2, "no_share_location"

    .line 693
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_3

    .line 814
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_12
    const-string/jumbo v2, "no_data_roaming"

    .line 815
    .restart local v2    # "restriction":Ljava/lang/String;
    nop

    .line 820
    :goto_3
    if-eqz v1, :cond_13

    .line 821
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 823
    :cond_13
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 817
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_14
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7d29d849 -> :sswitch_19
        -0x6b192413 -> :sswitch_18
        -0x596f7aff -> :sswitch_17
        -0x58d2ff08 -> :sswitch_16
        -0x4280630b -> :sswitch_15
        -0x39d6645f -> :sswitch_14
        -0x294f7102 -> :sswitch_13
        -0x252f8dda -> :sswitch_12
        -0x18d5c3ee -> :sswitch_11
        -0x611a9fa -> :sswitch_10
        -0x1efffcf -> :sswitch_f
        -0x102879f -> :sswitch_e
        0x3756c15 -> :sswitch_d
        0xf689f3e -> :sswitch_c
        0x28c0ce35 -> :sswitch_b
        0x3733860e -> :sswitch_a
        0x3ff919a6 -> :sswitch_9
        0x48f0b46c -> :sswitch_8
        0x4c070b4e -> :sswitch_7
        0x4df27163 -> :sswitch_6
        0x4f84b830 -> :sswitch_5
        0x5f8b91a8 -> :sswitch_4
        0x62299f68 -> :sswitch_3
        0x6305635d -> :sswitch_2
        0x6565577f -> :sswitch_1
        0x67748604 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isSystemApp(I[Ljava/lang/String;)Z
    .locals 8
    .param p0, "uid"    # I
    .param p1, "packageList"    # [Ljava/lang/String;

    .line 299
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 303
    return v0

    .line 305
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 306
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 308
    const v4, 0xc2000

    .line 311
    .local v4, "flags":I
    :try_start_0
    aget-object v5, p1, v3

    const v6, 0xc2000

    .line 312
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 313
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 314
    return v1

    .line 318
    .end local v4    # "flags":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_1

    .line 316
    :catch_0
    move-exception v4

    .line 306
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "i":I
    :cond_3
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .locals 6
    .param p0, "restriction"    # Ljava/lang/String;

    .line 266
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 269
    .local v0, "uid":I
    const/4 v2, 0x0

    .line 271
    .local v2, "pkgs":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v3

    .line 275
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 278
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    array-length v5, v2

    if-le v5, v1, :cond_0

    .line 281
    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_2

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_1
    return v4

    .line 294
    .end local v0    # "uid":I
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    :cond_3
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    .line 392
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 394
    if-nez p1, :cond_1

    .line 395
    return-void

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 402
    :cond_3
    return-void
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V
    .locals 2
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .param p2, "destRestrictionSet"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")V"
        }
    .end annotation

    .line 851
    .local p1, "sourceRestrictionsSets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/RestrictionsSet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 852
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/RestrictionsSet;

    .line 853
    .local v1, "sourceRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {v1, p2, p0}, Lcom/android/server/pm/RestrictionsSet;->moveRestriction(Lcom/android/server/pm/RestrictionsSet;Ljava/lang/String;)V

    .line 851
    .end local v1    # "sourceRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 74
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 75
    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;

    .line 365
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, "result":Landroid/os/Bundle;
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 358
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 346
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 347
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 350
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 353
    :cond_1
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldRestrictions"    # Landroid/os/Bundle;
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "restrictions"    # [Ljava/lang/String;

    .line 865
    array-length v0, p2

    if-nez v0, :cond_0

    .line 866
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 868
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 869
    .local v3, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 870
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 871
    const/4 v0, 0x1

    return v0

    .line 868
    .end local v3    # "restriction":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_2
    return v1
.end method

.method private static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I
    .param p2, "settingValue"    # I

    .line 879
    const-string/jumbo v0, "install_non_market_apps"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 881
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    if-nez p1, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    goto :goto_0

    .line 334
    :cond_2
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    const-string/jumbo v3, "true"

    invoke-interface {p0, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 340
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserRestrictionsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 342
    :cond_4
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    return-void
.end method
