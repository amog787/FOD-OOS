.class public Lcom/android/server/OpGpsNotificationInjector;
.super Ljava/lang/Object;
.source "OpGpsNotificationInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpGpsNotificationInjector;->DEBUG:Z

    .line 32
    const-class v0, Lcom/android/server/OpGpsNotificationInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OpGpsNotificationInjector;->TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpGpsNotificationInjector;->DEBUG_INJECTOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "isLocationEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    .local p2, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    sget-boolean v0, Lcom/android/server/OpGpsNotificationInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpLocationManagerServiceInjector.getCurrentProviderPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-static {}, Lcom/android/server/OpGpsNotificationInjector;->initInstance()V

    .line 50
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOnePlusGpsNotification;->getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "isLocationEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    .local p2, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    sget-boolean v0, Lcom/android/server/OpGpsNotificationInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpLocationManagerServiceInjector.getCurrentProviderPackageListsForInteger()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/server/OpGpsNotificationInjector;->initInstance()V

    .line 58
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOnePlusGpsNotification;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    .line 40
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOnePlusGpsNotification;

    sput-object v0, Lcom/android/server/OpGpsNotificationInjector;->sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;

    .line 43
    :cond_0
    return-void
.end method

.method public static updateGpsRequstPackage(Z)V
    .locals 2
    .param p0, "isRequest"    # Z

    .line 62
    sget-boolean v0, Lcom/android/server/OpGpsNotificationInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpLocationManagerServiceInjector.updateGpsRequstPackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-static {}, Lcom/android/server/OpGpsNotificationInjector;->initInstance()V

    .line 66
    sget-object v0, Lcom/android/server/OpGpsNotificationInjector;->sOnePlusGpsNotification:Lcom/android/server/IOnePlusGpsNotification;

    invoke-interface {v0, p0}, Lcom/android/server/IOnePlusGpsNotification;->updateGpsRequstPackage(Z)V

    .line 67
    return-void
.end method
