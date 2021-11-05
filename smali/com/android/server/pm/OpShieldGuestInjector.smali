.class public final Lcom/android/server/pm/OpShieldGuestInjector;
.super Ljava/lang/Object;
.source "OpShieldGuestInjector.java"


# static fields
.field private static sPackageShieldGuestMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus.carmode"

    const-string v2, "com.oneplus.brickmode"

    const-string v3, "com.oneplus.speechassist"

    const-string v4, "com.heytap.cloud"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/OpShieldGuestInjector;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisallowedPackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "disallowedPackages"    # [Ljava/lang/String;

    .line 23
    if-nez p0, :cond_0

    .line 24
    sget-object v0, Lcom/android/server/pm/OpShieldGuestInjector;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 28
    sget-object v1, Lcom/android/server/pm/OpShieldGuestInjector;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/android/server/pm/OpShieldGuestInjector;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljava/lang/String;

    .line 33
    :goto_1
    return-object p0
.end method

.method public static installNotInGuest(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 17
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OpShieldGuestInjector;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 20
    :cond_0
    return-void
.end method
