.class public Lcom/android/server/wm/WindowManagerDebugConfig;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_ANIM:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_DISPLAY:Z = false

.field static DEBUG_DRAG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_INPUT_METHOD:Z = false

.field static DEBUG_LAYERS:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_LAYOUT_REPEATS:Z = false

.field static DEBUG_ONEPLUS:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_SCREENSHOT:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STARTING_WINDOW_VERBOSE:Z = false

.field static DEBUG_TASK_MOVEMENT:Z = false

.field static DEBUG_TASK_POSITIONING:Z = false

.field static DEBUG_UNKNOWN_APP_VISIBILITY:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_WALLPAPER:Z = false

.field static DEBUG_WALLPAPER_LIGHT:Z = false

.field static DEBUG_WINDOW_CROP:Z = false

.field static DEBUG_WINDOW_TRACE:Z = false

.field static SHOW_LIGHT_TRANSACTIONS:Z = false

.field static SHOW_STACK_CRAWLS:Z = false

.field static SHOW_VERBOSE_TRANSACTIONS:Z = false

.field static final TAG_WITH_CLASS_NAME:Z = false

.field static final TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    .line 74
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    .line 75
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    .line 76
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    .line 77
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    .line 78
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    .line 79
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 80
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 81
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    .line 82
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    .line 83
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    .line 84
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    .line 85
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    .line 86
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    .line 87
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    .line 88
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    .line 89
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    .line 90
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    .line 91
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    .line 92
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    .line 93
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    .line 94
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    .line 95
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    .line 96
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    .line 97
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
