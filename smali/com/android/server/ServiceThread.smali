.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 40
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 45
    return-void
.end method
