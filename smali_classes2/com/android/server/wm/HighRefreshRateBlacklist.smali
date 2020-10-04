.class Lcom/android/server/wm/HighRefreshRateBlacklist;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x32

.field private static final SYSPROP_KEY:Ljava/lang/String; = "ro.window_manager.high_refresh_rate_blacklist"

.field private static final SYSPROP_KEY_ENTRY_SUFFIX:Ljava/lang/String; = "_entry"

.field private static final SYSPROP_KEY_LENGTH_SUFFIX:Ljava/lang/String; = "_length"


# instance fields
.field private mBlacklistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;)V
    .locals 4
    .param p1, "propertyGetter"    # Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    .line 55
    nop

    .line 56
    const-string v0, "ro.window_manager.high_refresh_rate_blacklist_length"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    .local v0, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.window_manager.high_refresh_rate_blacklist_entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static create()Lcom/android/server/wm/HighRefreshRateBlacklist;
    .locals 2

    .line 38
    new-instance v0, Lcom/android/server/wm/HighRefreshRateBlacklist;

    new-instance v1, Lcom/android/server/wm/HighRefreshRateBlacklist$1;

    invoke-direct {v1}, Lcom/android/server/wm/HighRefreshRateBlacklist$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist;-><init>(Lcom/android/server/wm/HighRefreshRateBlacklist$SystemPropertyGetter;)V

    return-object v0
.end method


# virtual methods
.method isBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
