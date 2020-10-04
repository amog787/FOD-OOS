.class Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector$1;
.super Landroid/util/Singleton;
.source "OpHeytapBusinessManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;
    .locals 1

    .line 85
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 86
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    .line 85
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector$1;->create()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    return-object v0
.end method
