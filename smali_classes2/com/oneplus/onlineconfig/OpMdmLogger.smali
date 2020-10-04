.class public Lcom/oneplus/onlineconfig/OpMdmLogger;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FingerprintMdmLogger"

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "FingerprintMdmLogger"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    .line 29
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandler:Landroid/os/Handler;

    .line 33
    :cond_0
    sget-object v0, Lcom/oneplus/onlineconfig/OpMdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/onlineconfig/OpMdmLogger$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/onlineconfig/OpMdmLogger$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
