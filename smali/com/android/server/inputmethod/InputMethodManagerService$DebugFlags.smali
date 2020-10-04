.class final Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugFlags"
.end annotation


# static fields
.field static final FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

.field static final FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 321
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    const/4 v1, 0x0

    const-string v2, "debug.optimize_startinput"

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    .line 323
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    const-string/jumbo v2, "persist.pre_render_ime_views"

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
