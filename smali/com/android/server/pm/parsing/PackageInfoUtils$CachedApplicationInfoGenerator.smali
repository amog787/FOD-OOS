.class public Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/PackageInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedApplicationInfoGenerator"
.end annotation


# instance fields
.field private mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 516
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 517
    return-object v0

    .line 519
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-object v0
.end method
