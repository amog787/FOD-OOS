.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# static fields
.field static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field private final mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

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
    .locals 2
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "blacklist"    # Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    .line 61
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    new-instance v0, Lcom/android/server/wm/ForceRefreshRatePackageList;

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/ForceRefreshRatePackageList;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    .line 64
    return-void
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .locals 6
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 71
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 72
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 73
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 74
    .local v2, "bestRefreshRate":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 75
    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 76
    aget v2, v1, v3

    .line 74
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 79
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

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 85
    return-void
.end method

.method calculatePriority(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 134
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 135
    .local v0, "isFocused":Z
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 137
    .local v1, "preferredModeId":I
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 138
    const/4 v2, 0x2

    return v2

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 141
    const/4 v2, 0x1

    return v2

    .line 143
    :cond_1
    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 144
    const/4 v2, 0x0

    return v2

    .line 146
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 96
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRateId(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "forceRefreshRateId":I
    if-lez v0, :cond_1

    .line 103
    return v0

    .line 107
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 122
    :cond_4
    return v1

    .line 108
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v1
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 90
    return-void
.end method
