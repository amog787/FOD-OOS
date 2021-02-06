.class public Lcom/android/server/wm/OpScreenCompatInjector;
.super Ljava/lang/Object;
.source "OpScreenCompatInjector.java"


# static fields
.field public static final IS_SCREEN_COMPAT_ENABLED:Z

.field public static final OP_COMPAT_MODE_16_9:I = 0x2

.field public static sNonRoundedCornerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 30
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v2, 0x31

    aput v2, v1, v3

    .line 31
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v0, Lcom/android/server/wm/OpScreenCompatInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ScreenDecorOverlayExpand"

    const-string v2, "op_screenrecord"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sNonRoundedCornerList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "topFullWin"    # Lcom/android/server/wm/WindowState;
    .param p1, "topDockedWin"    # Lcom/android/server/wm/WindowState;

    .line 156
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 157
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static finishBooting()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 57
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->finishBooting()V

    .line 60
    :cond_0
    return-void
.end method

.method public static getCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 116
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 117
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->getCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompatMode(Ljava/lang/String;I)I
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 108
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 109
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->getCompatMode(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p0, "statusBar"    # Lcom/android/server/wm/WindowState;

    .line 148
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 149
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 49
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 50
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->init(Lcom/android/server/wm/WindowManagerService;)V

    .line 53
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/wm/OpScreenCompatInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screencompat:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 44
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenCompat;

    sput-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    .line 46
    :cond_0
    return-void
.end method

.method public static isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "pf"    # Landroid/graphics/Rect;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 92
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 93
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayCompat(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 171
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 172
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 133
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 134
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onConfigurationChanged()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 142
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->onConfigurationChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public static overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 164
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 165
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 179
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 180
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F

    move-result v0

    return v0

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    return v0
.end method

.method public static resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 125
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 126
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v0
.end method

.method public static resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p0, "pf"    # Landroid/graphics/Rect;
    .param p1, "df"    # Landroid/graphics/Rect;
    .param p2, "cf"    # Landroid/graphics/Rect;
    .param p3, "vf"    # Landroid/graphics/Rect;
    .param p4, "sf"    # Landroid/graphics/Rect;
    .param p5, "of"    # Landroid/graphics/Rect;
    .param p6, "win"    # Lcom/android/server/wm/WindowState;

    .line 101
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 102
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 103
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IOpScreenCompat;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static resetModeIfNeed(IILjava/lang/String;I)I
    .locals 1
    .param p0, "code"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 84
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 85
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpScreenCompat;->resetModeIfNeed(IILjava/lang/String;I)I

    move-result v0

    return v0

    .line 88
    :cond_0
    return p3
.end method

.method public static updateDefaultForScreenCompat()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 64
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->updateDefaultForScreenCompat()V

    .line 67
    :cond_0
    return-void
.end method

.method public static updateDefaultForScreenCompat(Ljava/lang/String;I)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 70
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->updateDefaultForScreenCompat(Ljava/lang/String;I)V

    .line 74
    :cond_0
    return-void
.end method

.method public static updateSizeForResolutionChanged()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    .line 78
    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->updateSizeForResolutionChanged()V

    .line 81
    :cond_0
    return-void
.end method
