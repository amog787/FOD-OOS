.class Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "UserSystemPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserSystemPackageInstaller$PackageWhitelistMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final PACKAGE_WHITELIST_MODE_PROP:Ljava/lang/String; = "persist.debug.user.package_whitelist_mode"

.field private static final TAG:Ljava/lang/String; = "UserManagerService"

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_DEVICE_DEFAULT:I = -0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_DISABLE:I = 0x0

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_ENFORCE:I = 0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IGNORE_OTA:I = 0x10

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST:I = 0x4

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST_SYSTEM:I = 0x8

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_LOG:I = 0x2

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_NONE:I = -0x3e8


# instance fields
.field private final mUm:Lcom/android/server/pm/UserManagerService;

.field private final mUserTypes:[Ljava/lang/String;

.field private final mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .locals 4
    .param p1, "um"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p2, "userTypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 172
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 173
    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 180
    nop

    .line 181
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 182
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user types. However, UserSystemPackageInstaller does not work if there are more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user types."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .locals 0
    .param p1, "ums"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "sortedUserTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 187
    .local p2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 189
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 191
    return-void
.end method

.method private checkWhitelistedSystemPackages(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 280
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    const-string v0, "UserManagerService"

    const-string v1, "Checking that all system packages are whitelisted."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 287
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 288
    .local v2, "numberWarnings":I
    const-string v3, ") has "

    const-string v4, "checkWhitelistedSystemPackages(mode="

    if-nez v2, :cond_1

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") has no warnings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " warnings:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 295
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    .end local v5    # "i":I
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 301
    return-void

    .line 304
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v5

    .line 305
    .local v5, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 307
    .local v6, "numberErrors":I
    if-nez v6, :cond_4

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") has no errors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errors:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 316
    .local v3, "doWtf":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 317
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 318
    .local v7, "msg":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 319
    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 321
    :cond_5
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v7    # "msg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 324
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private dumpIndented(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 747
    .local v0, "mode":I
    const-string v1, "Whitelisted packages per user type"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 750
    const-string v1, "Mode: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 752
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " (enforced)"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 753
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " (logged)"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 754
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " (implicit)"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 755
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, " (ignore OTAs)"

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 757
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 760
    const-string v1, "Legend"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 762
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 765
    .end local v1    # "idx":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 767
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 768
    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 769
    .local v1, "size":I
    if-nez v1, :cond_5

    .line 770
    const-string v2, "No packages"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 772
    return-void

    .line 774
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, " packages:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 776
    const/4 v2, 0x0

    .local v2, "pkgIdx":I
    :goto_4
    const/4 v3, 0x1

    if-ge v2, v1, :cond_8

    .line 777
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 778
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 780
    .local v5, "userTypesBitSet":J
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_7

    .line 781
    shl-int v8, v3, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 782
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 780
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 785
    .end local v7    # "idx":I
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 776
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "userTypesBitSet":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 787
    .end local v2    # "pkgIdx":I
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 789
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 790
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Lcom/android/internal/util/IndentingPrintWriter;IZZ)V

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 792
    return-void
.end method

.method private static getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 731
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 732
    .local v0, "userTypeList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 733
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 736
    return-object v0
.end method

.method private getBaseTypeBitSets()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 677
    const-wide/16 v0, 0x0

    .line 678
    .local v0, "typesBitSetFull":J
    const-wide/16 v2, 0x0

    .line 679
    .local v2, "typesBitSetSystem":J
    const-wide/16 v4, 0x0

    .line 680
    .local v4, "typesBitSetProfile":J
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 681
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfFull(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 682
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v0, v9

    .line 684
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 685
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v2, v9

    .line 687
    :cond_1
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 688
    shl-int v7, v8, v6

    int-to-long v7, v7

    or-long/2addr v4, v7

    .line 680
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    .end local v6    # "idx":I
    :cond_3
    new-instance v6, Landroid/util/ArrayMap;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 693
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "FULL"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "SYSTEM"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "PROFILE"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-object v6
.end method

.method private getDeviceDefaultWhitelistMode()I
    .locals 2

    .line 475
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 476
    const v1, 0x10e00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 475
    return v0
.end method

.method private getInstallablePackagesForUserId(I)Ljava/util/Set;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getPackagesWhitelistErrors(I)Ljava/util/List;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 361
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v1

    .line 363
    .local v1, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 366
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    .line 368
    .local v3, "logMessageFmt":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 377
    return-object v0
.end method

.method private getPackagesWhitelistWarnings()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v0

    .line 332
    .local v0, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 336
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "%s is whitelisted but not present."

    .line 337
    .local v3, "notPresentFmt":Ljava/lang/String;
    const-string v4, "%s is whitelisted and present but not a system package."

    .line 338
    .local v4, "notSystemFmt":Ljava/lang/String;
    const-string v5, "%s is whitelisted but it\'s auto-generated RRO package."

    .line 339
    .local v5, "overlayPackageFmt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 340
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 341
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_0

    .line 342
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted but not present."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_0
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v11

    if-nez v11, :cond_1

    .line 344
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted and present but not a system package."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_1
    invoke-static {v8}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 346
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted but it\'s auto-generated RRO package."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2
    :goto_1
    goto :goto_0

    .line 349
    :cond_3
    return-object v1
.end method

.method private getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 710
    .local p1, "userTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 711
    .local v0, "resultBitSet":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 713
    .local v3, "type":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 714
    .local v4, "baseTypeBitSet":Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 715
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 716
    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v5

    .line 720
    .local v5, "userTypeBitSet":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 721
    or-long/2addr v0, v5

    .line 722
    goto :goto_0

    .line 724
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemConfig contained an invalid user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UserManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "baseTypeBitSet":Ljava/lang/Long;
    .end local v5    # "userTypeBitSet":J
    goto :goto_0

    .line 726
    :cond_2
    return-wide v0
.end method

.method private getWhitelistMode()I
    .locals 2

    .line 465
    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, "runtimeMode":I
    if-eq v0, v1, :cond_0

    .line 468
    return v0

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result v1

    return v1
.end method

.method private getWhitelistedSystemPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static hasAutoGeneratedRROSuffix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 426
    const-string v0, ".auto_generated_rro_product__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    const-string v0, ".auto_generated_rro_vendor__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 426
    :goto_1
    return v0
.end method

.method private static isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 434
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->hasAutoGeneratedRROSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0
.end method

.method private static isEnforceMode(I)Z
    .locals 1
    .param p0, "whitelistMode"    # I

    .line 440
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIgnoreOtaMode(I)Z
    .locals 1
    .param p0, "whitelistMode"    # I

    .line 445
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isImplicitWhitelistMode(I)Z
    .locals 1
    .param p0, "whitelistMode"    # I

    .line 455
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isImplicitWhitelistSystemMode(I)Z
    .locals 1
    .param p0, "whitelistMode"    # I

    .line 460
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isLogMode(I)Z
    .locals 1
    .param p0, "whitelistMode"    # I

    .line 450
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getPackagesWhitelistErrors$1(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 3
    .param p0, "allWhitelistedPackages"    # Ljava/util/Set;
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "errors"    # Ljava/util/List;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 369
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    return-void
.end method

.method static synthetic lambda$installWhitelistedSystemPackages$0(Ljava/util/Set;IZZLandroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)V
    .locals 10
    .param p0, "userWhitelist"    # Ljava/util/Set;
    .param p1, "userId"    # I
    .param p2, "isFirstBoot"    # Z
    .param p3, "isConsideredUpgrade"    # Z
    .param p4, "preExistingPackages"    # Landroid/util/ArraySet;
    .param p5, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 224
    iget-object v0, p5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 225
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 228
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 229
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    :cond_1
    invoke-virtual {p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 231
    .local v3, "install":Z
    :goto_0
    invoke-virtual {p5, p1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eq v4, v3, :cond_6

    .line 232
    move-object v4, p5

    move v5, v3

    move v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/PackageSetting;ZIZZLandroid/util/ArraySet;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 236
    :cond_3
    invoke-virtual {p5, v3, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 237
    nop

    .line 238
    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1

    .line 239
    :cond_4
    nop

    .line 237
    :goto_1
    invoke-virtual {p5, v1, p1}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_5

    const-string v2, "Installed "

    goto :goto_2

    :cond_5
    const-string v2, "Uninstalled "

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 234
    :cond_6
    :goto_3
    return-void

    .line 226
    .end local v3    # "install":Z
    :cond_7
    :goto_4
    return-void
.end method

.method static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 481
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 487
    const-class v0, Lcom/android/server/pm/UserSystemPackageInstaller;

    const-string v1, "USER_TYPE_PACKAGE_WHITELIST_MODE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    const-string v0, "DEVICE_DEFAULT"

    return-object v0

    .line 485
    :cond_1
    const-string v0, "NONE"

    return-object v0
.end method

.method private static shouldChangeInstallationState(Lcom/android/server/pm/PackageSetting;ZIZZLandroid/util/ArraySet;)Z
    .locals 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "install"    # Z
    .param p2, "userId"    # I
    .param p3, "isFirstBoot"    # Z
    .param p4, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "ZIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 265
    .local p5, "preOtaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 271
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method static shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .locals 2
    .param p0, "sysPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "implicitlyWhitelist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 558
    .local p1, "userTypeWhitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 566
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .restart local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 569
    :goto_1
    return v1
.end method

.method private static showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "verbose"    # Z
    .param p3, "issueType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 819
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 820
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 821
    if-eqz p1, :cond_0

    .line 822
    const-string v1, "No "

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :cond_0
    return-void

    .line 826
    :cond_1
    if-eqz p1, :cond_2

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 830
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 831
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 836
    :cond_4
    return-void
.end method


# virtual methods
.method determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .locals 16
    .param p1, "sysConfig"    # Lcom/android/server/SystemConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 625
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getBaseTypeBitSets()Ljava/util/Map;

    move-result-object v1

    .line 627
    .local v1, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    nop

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;

    move-result-object v2

    .line 630
    .local v2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 632
    .local v3, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 633
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v8

    .line 635
    .local v8, "typesBitSet":J
    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    .line 636
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "typesBitSet":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 640
    .end local v4    # "i":I
    :cond_1
    nop

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;

    move-result-object v4

    .line 642
    .local v4, "blacklist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 643
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 644
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v9

    .line 645
    .local v9, "nonTypesBitSet":J
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 646
    .local v11, "typesBitSet":Ljava/lang/Long;
    if-eqz v11, :cond_2

    .line 647
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    not-long v14, v9

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 648
    :cond_2
    cmp-long v12, v9, v6

    if-eqz v12, :cond_3

    .line 650
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "nonTypesBitSet":J
    .end local v11    # "typesBitSet":Ljava/lang/Long;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 654
    .end local v5    # "i":I
    :cond_4
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-object v3
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 740
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 741
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpIndented(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 743
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 740
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method dumpPackageWhitelistProblems(Lcom/android/internal/util/IndentingPrintWriter;IZZ)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "mode"    # I
    .param p3, "verbose"    # Z
    .param p4, "criticalOnly"    # Z

    .line 797
    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p2

    goto :goto_0

    .line 799
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 800
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result p2

    .line 802
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 804
    and-int/lit8 p2, p2, -0x3

    .line 806
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpPackageWhitelistProblems(): using mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v0

    .line 809
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "errors"

    invoke-static {p1, p3, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 811
    if-eqz p4, :cond_3

    return-void

    .line 813
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 814
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "warnings"

    invoke-static {p1, p3, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 509
    .local v0, "mode":I
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const/4 v1, 0x0

    return-object v1

    .line 512
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 514
    .local v1, "implicitlyWhitelist":Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 516
    .local v2, "whitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 517
    .local v3, "installPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 518
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    new-instance v5, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 536
    return-object v3
.end method

.method getUserTypeMask(Ljava/lang/String;)J
    .locals 3
    .param p1, "userType"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 665
    .local v0, "userTypeIndex":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 666
    .local v1, "userTypeMask":J
    :goto_0
    return-wide v1
.end method

.method getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v0

    .line 580
    .local v0, "userTypeMask":J
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 581
    .local v2, "installablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 582
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 583
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 584
    .local v5, "whitelistedUserTypes":J
    and-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 585
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "whitelistedUserTypes":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 588
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .locals 16
    .param p1, "isFirstBoot"    # Z
    .param p2, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 206
    .local p3, "preExistingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v7

    .line 207
    .local v7, "mode":I
    invoke-direct {v0, v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->checkWhitelistedSystemPackages(I)V

    .line 208
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v9, v2

    .line 209
    .local v9, "isConsideredUpgrade":Z
    if-nez v9, :cond_1

    if-nez p1, :cond_1

    .line 210
    return v1

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    return v1

    .line 217
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reviewing whitelisted packages due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ""

    if-eqz p1, :cond_3

    const-string v4, "[firstBoot]"

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_4

    const-string v3, "[upgrade]"

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 221
    .local v10, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v1

    :goto_2
    if-ge v13, v12, :cond_5

    aget v14, v11, v13

    .line 222
    .local v14, "userId":I
    invoke-direct {v0, v14}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserId(I)Ljava/util/Set;

    move-result-object v15

    .line 223
    .local v15, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;

    move-object v1, v6

    move-object v2, v15

    move v3, v14

    move/from16 v4, p1

    move v5, v9

    move-object v8, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;-><init>(Ljava/util/Set;IZZLandroid/util/ArraySet;)V

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 221
    .end local v14    # "userId":I
    .end local v15    # "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 245
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method isEnforceMode()Z
    .locals 1

    .line 382
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    return v0
.end method

.method isIgnoreOtaMode()Z
    .locals 1

    .line 395
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistMode()Z
    .locals 1

    .line 410
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistSystemMode()Z
    .locals 1

    .line 418
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v0

    return v0
.end method

.method isLogMode()Z
    .locals 1

    .line 402
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getInstallablePackagesForUserType$2$UserSystemPackageInstaller(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 3
    .param p1, "whitelistedPackages"    # Ljava/util/Set;
    .param p2, "implicitlyWhitelist"    # Z
    .param p3, "installPackages"    # Ljava/util/Set;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 525
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {p4}, Lcom/android/server/pm/OpReserveAppInjector;->isInstallForOtherUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_2
    return-void
.end method
