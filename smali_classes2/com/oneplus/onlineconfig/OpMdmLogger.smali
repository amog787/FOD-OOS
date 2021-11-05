.class public Lcom/oneplus/onlineconfig/OpMdmLogger;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FINGERPRINT_APP_ID:Ljava/lang/String; = "X9HFK50WT7"

.field private static final TAG:Ljava/lang/String; = "FingerprintMdmLogger"

.field private static sFpType:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sFpType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sFpType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 15
    sput-object p0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sFpType:Ljava/lang/String;

    return-object p0
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "FingerprintMdmLogger"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandler:Landroid/os/Handler;

    .line 42
    :cond_0
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/onlineconfig/OpMdmLogger$1;

    invoke-direct {v1, p1, p0}, Lcom/oneplus/onlineconfig/OpMdmLogger$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
