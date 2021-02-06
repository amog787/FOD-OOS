.class public Lcom/android/server/om/OverlayManagerServiceInjector;
.super Ljava/lang/Object;
.source "OverlayManagerServiceInjector.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

.field private static mSystemAppList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/om/OverlayManagerServiceInjector;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    sput-object p0, Lcom/android/server/om/OverlayManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const v3, 0x502002f

    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/om/OverlayManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 33
    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/om/OverlayManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/om/OverlayManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mSystemAppList:Ljava/util/ArrayList;

    .line 39
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mOmsInjector:Lcom/android/server/om/OverlayManagerServiceInjector;

    return-object v0
.end method


# virtual methods
.method public isOnePlusApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 42
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/om/OverlayManagerServiceInjector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
