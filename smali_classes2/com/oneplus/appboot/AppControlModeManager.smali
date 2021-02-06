.class public Lcom/oneplus/appboot/AppControlModeManager;
.super Ljava/lang/Object;
.source "AppControlModeManager.java"


# static fields
.field public static final OPSERVICE:Ljava/lang/String; = "opservice"

.field private static final TAG:Ljava/lang/String; = "AppControlModeManager"

.field private static final sCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/os/IOnePlusService;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/oneplus/os/IOnePlusService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/oneplus/appboot/AppControlModeManager$1;

    invoke-direct {v0}, Lcom/oneplus/appboot/AppControlModeManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static getAllAppControlModes(I)Ljava/util/List;
    .locals 2
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAppControlMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 100
    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public static getAppControlState(I)I
    .locals 2
    .param p0, "mode"    # I

    .line 126
    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusService;->getAppControlState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public static getDefault()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    .line 46
    sget-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusService;

    return-object v0
.end method

.method private static getService()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    .line 149
    sget-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    .line 150
    return-object v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getDefault()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    .line 153
    return-object v0
.end method

.method public static setAppControlMode(Ljava/lang/String;II)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 113
    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/os/IOnePlusService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public static setAppControlState(II)I
    .locals 2
    .param p0, "mode"    # I
    .param p1, "on"    # I

    .line 139
    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusService;->setAppControlState(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method
