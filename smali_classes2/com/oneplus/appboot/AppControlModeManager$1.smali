.class Lcom/oneplus/appboot/AppControlModeManager$1;
.super Landroid/util/Singleton;
.source "AppControlModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/appboot/AppControlModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/os/IOnePlusService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/os/IOnePlusService;
    .locals 4

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "ret":Lcom/oneplus/os/IOnePlusService;
    const-string v1, "opservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "b":Landroid/os/IBinder;
    const-string v2, "AppControlModeManager"

    if-nez v1, :cond_0

    .line 55
    const-string v3, "can\'t get service binder: AppControlModeManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v0

    .line 59
    :cond_0
    invoke-static {v1}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    const-string v3, "can\'t get service interface: AppControlModeManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/appboot/AppControlModeManager$1;->create()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    return-object v0
.end method
