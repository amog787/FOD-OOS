.class public Lcom/android/server/inputmethod/InputMethodSystemProperty;
.super Ljava/lang/Object;
.source "InputMethodSystemProperty.java"


# static fields
.field public static final MULTI_CLIENT_IME_ENABLED:Z

.field private static final PROP_DEBUG_MULTI_CLIENT_IME:Ljava/lang/String; = "persist.debug.multi_client_ime"

.field private static final PROP_PROD_MULTI_CLIENT_IME:Ljava/lang/String; = "ro.sys.multi_client_ime"

.field static final sMultiClientImeComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodSystemProperty;->getMultiClientImeComponentName()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSystemProperty;->sMultiClientImeComponentName:Landroid/content/ComponentName;

    .line 66
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultiClientImeComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 44
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 47
    nop

    .line 48
    const-string/jumbo v0, "persist.debug.multi_client_ime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 49
    .local v0, "debugIme":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 53
    .end local v0    # "debugIme":Landroid/content/ComponentName;
    :cond_0
    nop

    .line 54
    const-string/jumbo v0, "ro.sys.multi_client_ime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
