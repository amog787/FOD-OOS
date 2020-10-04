.class public Lcom/android/server/wm/OpWindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "OpWindowManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpWindowManagerServiceInjector"

.field private static isFirstRequestKeyguardSecure:Z

.field private static mKeyguardSecureArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static sForceNotSizeCompatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sNavGestureFullscreenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sOpSnapshotScaleFraction:F

.field private static sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 41
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->DEBUG:Z

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xcf

    aput v3, v1, v2

    .line 44
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    .line 48
    const-string v1, "persist.sys.snapshot.scale"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sput v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpSnapshotScaleFraction:F

    .line 54
    const-string v1, "com.oneplus.note"

    const-string v2, "com.oneplus.filemanager"

    const-string v3, "net.oneplus.forums"

    const-string v4, "com.oneplus.soundrecorder"

    const-string v5, "com.oneplus.bbs"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sForceNotSizeCompatList:Ljava/util/List;

    .line 64
    const-string v2, "com.eg.android.AlipayGphone"

    const-string v3, "com.bilibili.app"

    const-string v4, "tv.danmaku.bili"

    const-string v5, "com.bilibili.app.in"

    const-string v6, "com.tencent.qqmusic"

    const-string v7, "com.netease.cloudmusic"

    const-string v8, "com.netease.yanxuan"

    const-string v9, "com.autonavi.minimap"

    const-string v10, "com.xunmeng.pinduoduo"

    const-string v11, "air.tv.douyu.android"

    const-string v12, "com.youku.phone"

    const-string v13, "com.baidu.searchbox"

    const-string v14, "com.baidu.tieba"

    const-string v15, "com.kugou.android"

    const-string v16, "com.tencent.android.qqdownloader"

    const-string v17, "com.xingin.xhs"

    const-string v18, "com.tencent.qqpimsecure"

    const-string v19, "sogou.mobile.explorer"

    const-string v20, "com.xiaomi.smarthome"

    const-string v21, "com.unionpay"

    const-string v22, "com.tencent.weread"

    const-string v23, "com.cmbchina.ccd.pluto.cmbActivity"

    const-string v24, "com.hupu.games"

    const-string v25, "com.tencent.tim"

    const-string v26, "com.google.earth"

    const-string v27, "jp.naver.line.android"

    const-string v28, "com.tencent.mobileqq"

    const-string v29, "com.qq.reader"

    const-string v30, "com.nintendo.znca"

    const-string v31, "com.icbc"

    const-string v32, "com.baidu.netdisk"

    const-string v33, "cn.kuwo.player"

    const-string v34, "ctrip.android.view"

    const-string v35, "com.baidu.homework"

    const-string v36, "com.alibaba.aliyun"

    const-string v37, "com.eastmoney.android.berlin"

    const-string v38, "com.netease.mail"

    const-string v39, "com.cainiao.wireless"

    const-string v40, "com.google.android.apps.translate"

    filled-new-array/range {v2 .. v40}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    .line 229
    sput-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isFirstRequestKeyguardSecure:Z

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->mKeyguardSecureArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustFocusStackIfNeed(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p0, "defaultDisplay"    # Lcom/android/server/wm/ActivityDisplay;
    .param p1, "targetStack"    # Lcom/android/server/wm/ActivityStack;

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 214
    .local v0, "aboveStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 218
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 219
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 221
    .local v2, "taskId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustFocusStackIfNeed: setFocus to taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpWindowManagerServiceInjector"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 225
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "taskId":I
    :cond_0
    return-void
.end method

.method public static canSkiWindowAnimation(Lcom/android/server/wm/WindowState;I)Z
    .locals 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "transit"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 203
    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable dim window enter anim for win:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " main="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWindowManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v0

    .line 208
    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static canSkipAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/AppWindowToken;IZILcom/android/server/wm/AppTransition;)Z
    .locals 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "wToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "userId"    # I
    .param p5, "appTransition"    # Lcom/android/server/wm/AppTransition;

    .line 167
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 168
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    const/16 v2, 0x19

    if-ne p2, v2, :cond_1

    .line 172
    invoke-virtual {p5}, Lcom/android/server/wm/AppTransition;->isCustomAnimationType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 176
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 178
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    .line 177
    invoke-virtual {v2, v3, v4, v5, p4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 180
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_1

    .line 181
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 183
    .local v3, "windowIsTranslucent":Z
    iget-object v4, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 185
    .local v4, "windowIsFloating":Z
    iget-object v5, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 188
    .local v5, "windowShowWallpaper":Z
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable exit anim for translucent app:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " win="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "OpWindowManagerServiceInjector"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x1

    return v1

    .line 194
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v3    # "windowIsTranslucent":Z
    .end local v4    # "windowIsFloating":Z
    .end local v5    # "windowShowWallpaper":Z
    :cond_1
    return v1
.end method

.method public static createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/IScreenRotationAnimation;
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "appTransitionType"    # I

    .line 139
    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    .line 140
    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpWindowManagerService;->createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forceDarkSystemUI(I)I
    .locals 3
    .param p0, "systemUiVisibility"    # I

    .line 156
    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    .line 157
    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x113

    aput v2, v0, v1

    .line 158
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpWindowManagerService;->forceDarkSystemUI(I)I

    move-result v0

    return v0

    .line 161
    :cond_0
    return p0
.end method

.method private static initInstance()V
    .locals 1

    .line 130
    sget-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 133
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpWindowManagerService;

    sput-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    .line 135
    :cond_0
    return-void
.end method

.method public static isKeyguardSecure(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isKeyguardSecure":Z
    sget-boolean v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isFirstRequestKeyguardSecure:Z

    if-eqz v1, :cond_0

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    .line 236
    invoke-static {p0, v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->updateKeyguardSecure(IZ)V

    .line 237
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isFirstRequestKeyguardSecure:Z

    .line 238
    return v0

    .line 240
    :cond_0
    sget-object v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->mKeyguardSecureArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static reserFrameForNavGesture(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;I)V
    .locals 2
    .param p0, "pf"    # Landroid/graphics/Rect;
    .param p1, "df"    # Landroid/graphics/Rect;
    .param p2, "cf"    # Landroid/graphics/Rect;
    .param p3, "vf"    # Landroid/graphics/Rect;
    .param p4, "sf"    # Landroid/graphics/Rect;
    .param p5, "of"    # Landroid/graphics/Rect;
    .param p6, "win"    # Lcom/android/server/wm/WindowState;
    .param p7, "navBarHeight"    # I

    .line 108
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    .line 109
    invoke-virtual {p6}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_0

    .line 111
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 113
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_1

    .line 114
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 116
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_2

    .line 117
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 119
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_3

    .line 120
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    .line 122
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_4

    .line 123
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 126
    :cond_4
    return-void
.end method

.method public static stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 148
    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    .line 149
    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpWindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static updateKeyguardSecure(IZ)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "isKeyguardSecure"    # Z

    .line 244
    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->mKeyguardSecureArray:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    return-void
.end method
