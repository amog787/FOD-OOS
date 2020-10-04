.class public Lcom/android/server/om/OverlayManagerServiceInjector;
.super Ljava/lang/Object;
.source "OverlayManagerServiceInjector.java"


# static fields
.field private static mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;


# instance fields
.field private mForbiddenOverlayTargetPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForbiddenTargetPackages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceInjector;->mForbiddenTargetPackages:[Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceInjector;->mForbiddenTargetPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceInjector;->mForbiddenOverlayTargetPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/om/OverlayManagerServiceInjector;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    return-object v0
.end method


# virtual methods
.method public isOverlayForbidden(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceInjector;->mForbiddenOverlayTargetPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
