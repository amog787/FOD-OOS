.class Lcom/oneplus/core/oimc/OIMCServiceManager$1;
.super Landroid/util/Singleton;
.source "OIMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/OIMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/core/oimc/IOIMCService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/core/oimc/IOIMCService;
    .locals 4

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "ret":Lcom/oneplus/core/oimc/IOIMCService;
    const-string v1, "oimc_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 42
    .local v1, "b":Landroid/os/IBinder;
    const-string v2, "OIMCServiceManager"

    if-nez v1, :cond_0

    .line 43
    const-string v3, "can\'t get service binder: OIMCServiceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v0

    .line 47
    :cond_0
    invoke-static {v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    const-string v3, "can\'t get service interface: OIMCServiceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/oneplus/core/oimc/OIMCServiceManager$1;->create()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    return-object v0
.end method
