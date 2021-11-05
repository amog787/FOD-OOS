.class public Lcom/android/server/protolog/ProtoLog$Cache;
.super Ljava/lang/Object;
.source "ProtoLog$Cache.java"


# static fields
.field public static TEST_GROUP_enabled:Z

.field public static WM_DEBUG_ADD_REMOVE_enabled:Z

.field public static WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

.field public static WM_DEBUG_APP_TRANSITIONS_enabled:Z

.field public static WM_DEBUG_BOOT_enabled:Z

.field public static WM_DEBUG_DRAW_enabled:Z

.field public static WM_DEBUG_FOCUS_LIGHT_enabled:Z

.field public static WM_DEBUG_FOCUS_enabled:Z

.field public static WM_DEBUG_IME_enabled:Z

.field public static WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

.field public static WM_DEBUG_ORIENTATION_enabled:Z

.field public static WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

.field public static WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

.field public static WM_DEBUG_RESIZE_enabled:Z

.field public static WM_DEBUG_SCREEN_ON_enabled:Z

.field public static WM_DEBUG_STARTING_WINDOW_enabled:Z

.field public static WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

.field public static WM_ERROR_enabled:Z

.field public static WM_SHOW_SURFACE_ALLOC_enabled:Z

.field public static WM_SHOW_TRANSACTIONS_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    .line 5
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    .line 6
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    .line 7
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_BOOT_enabled:Z

    .line 8
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    .line 9
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    .line 10
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_enabled:Z

    .line 11
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    .line 12
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    .line 13
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    .line 14
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    .line 15
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    .line 16
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    .line 17
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_DRAW_enabled:Z

    .line 18
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    .line 19
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    .line 20
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    .line 21
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    .line 22
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    .line 23
    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->TEST_GROUP_enabled:Z

    .line 26
    sget-object v0, Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    .line 27
    invoke-static {}, Lcom/android/server/protolog/ProtoLog$Cache;->update()V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update()V
    .locals 1

    .line 31
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    .line 32
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    .line 33
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    .line 34
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_BOOT_enabled:Z

    .line 35
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    .line 36
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    .line 37
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_enabled:Z

    .line 38
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    .line 39
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    .line 40
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    .line 41
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    .line 42
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    .line 43
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    .line 44
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_DRAW_enabled:Z

    .line 45
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    .line 46
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    .line 47
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    .line 48
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    .line 49
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    .line 50
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->TEST_GROUP:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->TEST_GROUP_enabled:Z

    .line 51
    return-void
.end method
