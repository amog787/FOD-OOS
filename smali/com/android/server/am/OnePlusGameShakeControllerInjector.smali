.class public Lcom/android/server/am/OnePlusGameShakeControllerInjector;
.super Ljava/lang/Object;
.source "OnePlusGameShakeControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusGameShakeControllerInjector"

.field private static onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameMultiTouchList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_game_shake:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 49
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOnePlusGameShakeController;

    sput-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Lcom/android/server/am/IOnePlusGameShakeController;->getGameMultiTouchList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    const-string v0, "OnePlusGameShakeControllerInjector"

    const-string/jumbo v1, "onePlusGameShakeController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_game_shake:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 34
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOnePlusGameShakeController;

    sput-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->onePlusGameShakeController:Lcom/android/server/am/IOnePlusGameShakeController;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0, p0}, Lcom/android/server/am/IOnePlusGameShakeController;->getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    const-string v0, "OnePlusGameShakeControllerInjector"

    const-string/jumbo v1, "onePlusGameShakeController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
