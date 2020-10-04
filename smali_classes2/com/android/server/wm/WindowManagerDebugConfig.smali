.class public Lcom/android/server/wm/WindowManagerDebugConfig;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ANIM:Z = false

.field static DEBUG_APP_ORIENTATION:Z = false

.field static DEBUG_APP_TRANSITIONS:Z = false

.field static DEBUG_BOOT:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_DIM_LAYER:Z = false

.field static DEBUG_DISPLAY:Z = false

.field static DEBUG_DRAG:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_FOCUS_LIGHT:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_INPUT_METHOD:Z = false

.field static DEBUG_KEEP_SCREEN_ON:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYERS:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_LAYOUT_REPEATS:Z = false

.field static DEBUG_ONEPLUS:Z = false

.field static DEBUG_ORIENTATION:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_RECENTS_ANIMATIONS:Z = false

.field static DEBUG_REMOTE_ANIMATIONS:Z = false

.field static DEBUG_RESIZE:Z = false

.field static DEBUG_SCREENSHOT:Z = false

.field static DEBUG_SCREEN_ON:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STARTING_WINDOW:Z = false

.field static DEBUG_STARTING_WINDOW_VERBOSE:Z = false

.field static DEBUG_TASK_MOVEMENT:Z = false

.field static DEBUG_TASK_POSITIONING:Z = false

.field static DEBUG_TOKEN_MOVEMENT:Z = false

.field static DEBUG_UNKNOWN_APP_VISIBILITY:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_WALLPAPER:Z = false

.field static DEBUG_WALLPAPER_LIGHT:Z = false

.field static DEBUG_WINDOW_CROP:Z = false

.field static DEBUG_WINDOW_MOVEMENT:Z = false

.field static DEBUG_WINDOW_TRACE:Z = false

.field static SHOW_LIGHT_TRANSACTIONS:Z = false

.field static SHOW_STACK_CRAWLS:Z = false

.field static SHOW_SURFACE_ALLOC:Z = false

.field static SHOW_TRANSACTIONS:Z = false

.field static SHOW_VERBOSE_TRANSACTIONS:Z = false

.field static final TAG_KEEP_SCREEN_ON:Ljava/lang/String; = "DebugKeepScreenOn"

.field static final TAG_WITH_CLASS_NAME:Z = false

.field static final TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    .line 93
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    .line 94
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 95
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 96
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    .line 97
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    .line 98
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    .line 99
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    .line 100
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    .line 101
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    .line 102
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    .line 103
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 104
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    .line 105
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    .line 106
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    .line 107
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_ORIENTATION:Z

    .line 108
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 115
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    .line 117
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    .line 118
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    .line 119
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    .line 120
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    .line 121
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    .line 122
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    .line 123
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    .line 124
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    .line 125
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    .line 126
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    .line 127
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    .line 128
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    .line 129
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    .line 130
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    .line 131
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    .line 132
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    .line 133
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    .line 134
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    .line 135
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    .line 136
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    .line 137
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    .line 138
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    .line 139
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    .line 141
    sput-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    .line 142
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    sput-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    .line 145
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
