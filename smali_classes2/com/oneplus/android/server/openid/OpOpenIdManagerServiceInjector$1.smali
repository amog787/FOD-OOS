.class Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector$1;
.super Landroid/util/Singleton;
.source "OpOpenIdManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;
    .locals 1

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 44
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;

    .line 43
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector$1;->create()Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;

    move-result-object v0

    return-object v0
.end method
