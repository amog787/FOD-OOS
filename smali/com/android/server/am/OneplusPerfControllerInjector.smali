.class public Lcom/android/server/am/OneplusPerfControllerInjector;
.super Ljava/lang/Object;
.source "OneplusPerfControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OneplusPerfControllerInjector"

.field private static oneplusPerfController:Lcom/android/server/am/IOneplusPerfController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OneplusPerfControllerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .line 30
    sget-object v0, Lcom/android/server/am/OneplusPerfControllerInjector;->oneplusPerfController:Lcom/android/server/am/IOneplusPerfController;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_skipdoframe:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOneplusPerfController;

    sput-object v0, Lcom/android/server/am/OneplusPerfControllerInjector;->oneplusPerfController:Lcom/android/server/am/IOneplusPerfController;

    .line 34
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OneplusPerfControllerInjector;->DEBUG:Z

    const-string v1, "OneplusPerfControllerInjector"

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "in services.jar OneplusPerfControllerInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    sget-object v0, Lcom/android/server/am/OneplusPerfControllerInjector;->oneplusPerfController:Lcom/android/server/am/IOneplusPerfController;

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0}, Lcom/android/server/am/IOneplusPerfController;->init()V

    goto :goto_0

    .line 41
    :cond_2
    const-string/jumbo v0, "oneplusPerfController is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void
.end method
