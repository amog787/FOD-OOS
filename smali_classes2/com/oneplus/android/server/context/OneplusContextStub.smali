.class public final Lcom/oneplus/android/server/context/OneplusContextStub;
.super Ljava/lang/Object;
.source "OneplusContextStub.java"


# static fields
.field private static mContextStub:Lcom/oneplus/android/server/context/IOneplusContextStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/context/OneplusContextStub;->mContextStub:Lcom/oneplus/android/server/context/IOneplusContextStub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final attach(Lcom/oneplus/android/server/context/IOneplusContextStub;)V
    .locals 0
    .param p0, "contextStub"    # Lcom/oneplus/android/server/context/IOneplusContextStub;

    .line 25
    sput-object p0, Lcom/oneplus/android/server/context/OneplusContextStub;->mContextStub:Lcom/oneplus/android/server/context/IOneplusContextStub;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/oneplus/android/server/context/IOneplusContextStub;
    .locals 1

    .line 21
    sget-object v0, Lcom/oneplus/android/server/context/OneplusContextStub;->mContextStub:Lcom/oneplus/android/server/context/IOneplusContextStub;

    return-object v0
.end method

.method public static final queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 29
    sget-object v0, Lcom/oneplus/android/server/context/OneplusContextStub;->mContextStub:Lcom/oneplus/android/server/context/IOneplusContextStub;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/context/IOneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
