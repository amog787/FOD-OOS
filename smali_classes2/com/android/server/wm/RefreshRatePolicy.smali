.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# instance fields
.field private final mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

.field private final mLowRefreshRateId:I

.field private final mNonHighRefreshRatePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .locals 1
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "blacklist"    # Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    .line 35
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    .line 36
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    return-void
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .locals 6
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 45
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 46
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 47
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 48
    .local v2, "bestRefreshRate":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 49
    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 50
    aget v2, v1, v3

    .line 48
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 53
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v3

    return v3
.end method


# virtual methods
.method addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 59
    return-void
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    return v1

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 90
    :cond_3
    return v1

    .line 76
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v0
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 64
    return-void
.end method
