.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field static final MAX_APP_TRANSITION_DURATION:I = 0xbb8

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mDefaultWindowAnimationStyleResId:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field final mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field private mLastChangingApp:Ljava/lang/String;

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 173
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 191
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 214
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 250
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 259
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 264
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 267
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 285
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 288
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 289
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 290
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 291
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 292
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 294
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 296
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 300
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 314
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 327
    const-string v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 332
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 334
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IRemoteCallback;

    .line 158
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .line 2158
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2166
    :cond_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2164
    :cond_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2162
    :cond_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2160
    :cond_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "transition"    # I

    .line 2081
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2146
    :pswitch_0
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2143
    :pswitch_1
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2140
    :pswitch_2
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2137
    :pswitch_3
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2134
    :pswitch_4
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2131
    :pswitch_5
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2128
    :pswitch_6
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2125
    :pswitch_7
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2122
    :pswitch_8
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2119
    :pswitch_9
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2116
    :pswitch_a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2113
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2110
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2107
    :pswitch_d
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 2104
    :pswitch_e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 2101
    :pswitch_f
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 2098
    :pswitch_10
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 2095
    :pswitch_11
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 2092
    :pswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 2089
    :pswitch_13
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 2149
    :cond_0
    const-string v0, "TRANSIT_SHOW_SINGLE_TASK_DISPLAY"

    return-object v0

    .line 2086
    :cond_1
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 2083
    :cond_2
    const-string v0, "TRANSIT_UNSET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 3
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 876
    if-nez p1, :cond_0

    .line 877
    const-wide/16 v0, 0x150

    return-wide v0

    .line 879
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 880
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 879
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 881
    .local v0, "fraction":F
    const/high16 v1, 0x43a80000    # 336.0f

    const/high16 v2, 0x42a80000    # 84.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-long v1, v2

    return-wide v1
.end method

.method private canOverridePendingAppTransition()Z
    .locals 2

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 748
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 749
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 750
    int-to-float v1, p0

    return v1

    .line 752
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 26
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 1415
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 1416
    .local v3, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 1417
    .local v4, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1418
    .local v5, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1419
    .local v6, "destHeight":F
    if-eqz p4, :cond_0

    div-float v7, v3, v5

    goto :goto_0

    :cond_0
    div-float v7, v5, v3

    :goto_0
    move v9, v7

    .line 1420
    .local v9, "scaleH":F
    if-eqz p4, :cond_1

    div-float v7, v4, v6

    goto :goto_1

    :cond_1
    div-float v7, v6, v4

    :goto_1
    move v11, v7

    .line 1421
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1422
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 1423
    move v10, v8

    goto :goto_2

    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_2
    move v15, v10

    .line 1424
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3

    .line 1425
    goto :goto_3

    :cond_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_3
    move v14, v8

    .line 1428
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    int-to-float v10, v15

    add-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    .line 1429
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    int-to-float v12, v14

    add-float/2addr v8, v12

    div-float v24, v8, v10

    .line 1430
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6

    .line 1431
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v8, v16

    move/from16 v13, v23

    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6

    .line 1432
    .end local v25    # "surfaceInsetsV":I
    .restart local v14    # "surfaceInsetsV":I
    :cond_6
    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_6
    move-object/from16 v8, v16

    .line 1433
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 1434
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 1435
    .local v12, "sourceVCenter":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1436
    .local v13, "destHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    .line 1437
    .local v14, "destVCenter":I
    if-eqz p4, :cond_7

    sub-int v16, v10, v13

    goto :goto_7

    :cond_7
    sub-int v16, v13, v10

    :goto_7
    move/from16 v17, v16

    .line 1438
    .local v17, "fromX":I
    if-eqz p4, :cond_8

    sub-int v16, v12, v14

    goto :goto_8

    :cond_8
    sub-int v16, v14, v12

    :goto_8
    move/from16 v18, v16

    .line 1439
    .local v18, "fromY":I
    if-eqz p4, :cond_9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v17

    .end local v17    # "fromX":I
    .local v1, "fromX":I
    int-to-float v2, v1

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v4, v3

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 1440
    .end local v1    # "fromX":I
    .end local v19    # "destWidth":F
    .local v3, "sourceWidth":F
    .restart local v4    # "sourceHeight":F
    .restart local v5    # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_9
    move/from16 v19, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .end local v5    # "destWidth":F
    .restart local v1    # "fromX":I
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19    # "destWidth":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_9
    nop

    .line 1441
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1442
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1443
    move-object/from16 v2, p0

    invoke-direct {v2, v7}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    .line 1444
    return-object v7
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 30
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 888
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v5, 0x1

    if-eqz p2, :cond_8

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 890
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 894
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 899
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 900
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-gtz v10, :cond_0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 901
    :goto_0
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gtz v11, :cond_1

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v5

    goto :goto_1

    :cond_1
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 899
    :goto_1
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 904
    const/4 v7, 0x0

    .line 905
    .local v7, "t":F
    if-lez v15, :cond_2

    .line 906
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2

    .line 905
    :cond_2
    move/from16 v16, v7

    .line 908
    .end local v7    # "t":F
    .local v16, "t":F
    :goto_2
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 909
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 910
    .local v8, "translationX":I
    move v9, v7

    .line 911
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 912
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 913
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 914
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 915
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 916
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 917
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 922
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v14, v18, v20

    if-le v13, v14, :cond_3

    .line 923
    sub-int v13, v18, v20

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v13, v14

    .line 924
    const/4 v9, 0x0

    .line 925
    const/4 v11, 0x0

    .line 926
    const/4 v12, 0x1

    move v14, v7

    move/from16 v21, v9

    move/from16 v22, v11

    goto :goto_3

    .line 922
    :cond_3
    move v14, v7

    move/from16 v21, v9

    move/from16 v22, v11

    .line 928
    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v14, "translationY":I
    .local v21, "translationYCorrection":I
    .local v22, "clipStartY":I
    :goto_3
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_4

    .line 929
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 930
    const/4 v10, 0x0

    .line 931
    const/4 v12, 0x1

    .line 933
    :cond_4
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_5

    .line 934
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 935
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 936
    const/4 v12, 0x1

    move v13, v8

    move v11, v12

    move v12, v10

    goto :goto_4

    .line 933
    :cond_5
    move v13, v8

    move v11, v12

    move v12, v10

    .line 938
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "cutOff":Z
    .local v12, "clipStartX":I
    .local v13, "translationX":I
    :goto_4
    int-to-float v7, v13

    int-to-float v8, v14

    move-object/from16 v10, p4

    invoke-direct {v0, v11, v7, v8, v10}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 942
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 943
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v12

    const/4 v4, 0x0

    invoke-direct {v7, v12, v5, v4, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 944
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 945
    long-to-float v7, v8

    const/high16 v24, 0x40200000    # 2.5f

    div-float v7, v7, v24

    float-to-long v3, v7

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 947
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v13

    int-to-float v7, v14

    const/4 v2, 0x0

    invoke-direct {v3, v4, v2, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v2, v3

    .line 948
    .local v2, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v11, :cond_6

    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_5

    .line 949
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 948
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 950
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 952
    new-instance v3, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 953
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v4, v22, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v7

    move-object v7, v3

    move-wide/from16 v27, v8

    .end local v8    # "duration":J
    .local v27, "duration":J
    move/from16 v8, v22

    move v9, v4

    move/from16 v10, v24

    move v4, v11

    .end local v11    # "cutOff":Z
    .local v4, "cutOff":Z
    move v11, v15

    move/from16 v24, v12

    .end local v12    # "clipStartX":I
    .local v24, "clipStartX":I
    move/from16 v12, v21

    move/from16 v29, v13

    .end local v13    # "translationX":I
    .local v29, "translationX":I
    move/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "translationY":I
    .local v25, "translationY":I
    move-object/from16 v14, v26

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 957
    .local v3, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 958
    move-wide/from16 v7, v27

    .end local v27    # "duration":J
    .local v7, "duration":J
    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 961
    const-wide/16 v9, 0x4

    div-long v9, v7, v9

    .line 962
    .local v9, "alphaDuration":J
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 963
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 964
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 966
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 967
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 968
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 969
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 970
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 971
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 972
    invoke-virtual {v12, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 973
    move-object/from16 v23, v12

    .line 974
    .local v23, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 975
    iput-wide v7, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 979
    if-eqz v4, :cond_7

    .line 980
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_6

    :cond_7
    nop

    :goto_6
    iput v13, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 981
    .end local v2    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v3    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v4    # "cutOff":Z
    .end local v5    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v6    # "appWidth":I
    .end local v7    # "duration":J
    .end local v9    # "alphaDuration":J
    .end local v11    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "appHeight":I
    .end local v16    # "t":F
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "halfWidth":I
    .end local v20    # "halfHeight":I
    .end local v21    # "translationYCorrection":I
    .end local v22    # "clipStartY":I
    .end local v24    # "clipStartX":I
    .end local v25    # "translationY":I
    .end local v29    # "translationX":I
    goto :goto_a

    .line 983
    .end local v23    # "anim":Landroid/view/animation/Animation;
    :cond_8
    const/4 v2, 0x6

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    .line 989
    const-wide/16 v2, 0x150

    .local v2, "duration":J
    goto :goto_7

    .line 986
    .end local v2    # "duration":J
    :cond_9
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v2, v2

    .line 987
    .restart local v2    # "duration":J
    nop

    .line 992
    :goto_7
    const/16 v4, 0xe

    if-eq v1, v4, :cond_b

    const/16 v4, 0xf

    if-ne v1, v4, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_8

    .line 1002
    :cond_a
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v5, 0x1

    .local v4, "anim":Landroid/view/animation/Animation;
    goto :goto_9

    .line 992
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_b
    const/high16 v5, 0x3f800000    # 1.0f

    .line 998
    :goto_8
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 999
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 1004
    :goto_9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1005
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1006
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v23, v4

    .line 1008
    .end local v2    # "duration":J
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v23    # "anim":Landroid/view/animation/Animation;
    :goto_a
    return-object v23
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1222
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1226
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1223
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1231
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1232
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1234
    cmpl-float v1, p3, p4

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    if-lez v1, :cond_0

    .line 1236
    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    add-float v5, v2, v3

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 1239
    :cond_0
    mul-float/2addr v3, p3

    mul-float/2addr v2, p4

    add-float v5, v3, v2

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1241
    :goto_0
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .line 1559
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1560
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1561
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1562
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1564
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1565
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1566
    .local v2, "set":Landroid/view/animation/AnimationSet;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1567
    .local v4, "fromWidth":F
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1568
    .local v5, "toWidth":F
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1572
    .local v6, "fromHeight":F
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1573
    .local v7, "toHeight":F
    const/4 v8, 0x0

    .line 1574
    .local v8, "translateAdjustment":I
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_0

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_0

    .line 1578
    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1582
    :cond_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1586
    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    .line 1592
    :goto_0
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1594
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1595
    const-wide/16 v10, 0x150

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1596
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1597
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 760
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 761
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 763
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 764
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 765
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 766
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 767
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 768
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 770
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 771
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 773
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 774
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 775
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 776
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 777
    move-object v4, v6

    .line 778
    .end local v6    # "set":Landroid/view/animation/AnimationSet;
    .end local v7    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v7, 0xe

    if-eq v1, v7, :cond_2

    const/16 v7, 0xf

    if-ne v1, v7, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 784
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 785
    .restart local v4    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 795
    :goto_1
    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/4 v6, 0x7

    if-eq v1, v6, :cond_3

    .line 801
    const-wide/16 v6, 0x150

    .local v6, "duration":J
    goto :goto_2

    .line 798
    .end local v6    # "duration":J
    :cond_3
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v6, v6

    .line 799
    .restart local v6    # "duration":J
    nop

    .line 804
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 805
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 806
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 807
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 808
    return-object v4
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/IRemoteCallback;

    .line 2402
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2404
    goto :goto_0

    .line 2403
    :catch_0
    move-exception v0

    .line 2405
    :goto_0
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .line 2044
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2046
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2048
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2049
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2067
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .line 1245
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1246
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1248
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1253
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1256
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 587
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    if-eqz p1, :cond_1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_2
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_6

    .line 594
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "android"

    .line 595
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 596
    .local v2, "resId":I
    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4

    .line 597
    const-string v0, "android"

    .line 599
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_5
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    return-object v1

    .line 604
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_6
    return-object v2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 608
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resId=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    if-eqz p1, :cond_3

    .line 611
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_1

    .line 612
    const-string p1, "android"

    .line 614
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 619
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 814
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 819
    :goto_1
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .locals 18

    .line 2369
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2370
    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2371
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2372
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2374
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionTimeoutLocked()V

    .line 2375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2376
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2377
    :cond_1
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    int-to-long v3, v3

    .local v3, "protoLogParam0":J
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    .local v5, "protoLogParam1":Z
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    int-to-long v6, v6

    .local v6, "protoLogParam2":J
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    int-to-long v8, v8

    .local v8, "protoLogParam3":J
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    int-to-long v10, v10

    .local v10, "protoLogParam4":J
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v14, 0x15d

    const/4 v15, 0x0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v13, v17

    const/16 v16, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    move-wide/from16 v16, v3

    const v3, 0x148d2a13

    .end local v3    # "protoLogParam0":J
    .local v16, "protoLogParam0":J
    invoke-static {v12, v3, v14, v15, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2387
    .end local v5    # "protoLogParam1":Z
    .end local v6    # "protoLogParam2":J
    .end local v8    # "protoLogParam3":J
    .end local v10    # "protoLogParam4":J
    .end local v16    # "protoLogParam0":J
    :cond_2
    sget-boolean v3, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v3, :cond_3

    .line 2388
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2389
    .local v3, "appsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2390
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/policy/OpQuickPayInjector;->notifyAppLaunchFailedLw(Ljava/lang/String;)V

    .line 2389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2394
    .end local v3    # "appsCount":I
    .end local v4    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 2395
    iget-object v3, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2397
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2398
    return-void

    .line 2397
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method static isActivityTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2342
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isChangeTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2348
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isClosingTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2352
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2320
    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isKeyguardTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2325
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isTaskOpenTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2336
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isTaskTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2330
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$B95jxKE2FnT5RNLStTafenhEYj4(Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 641
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 643
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 644
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 646
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 648
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 652
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 654
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_0

    .line 655
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 658
    .end local v0    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "transit"    # I

    .line 1832
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 1833
    const/4 v0, 0x0

    return-object v0

    .line 1835
    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1837
    .local v0, "toShade":Z
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1839
    .local v3, "subtle":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x15

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-interface {v4, v1, v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private needsBoosting()Z
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 510
    .local v0, "recentsAnimRunning":Z
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .locals 2
    .param p1, "transit"    # I

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(IJJJ)I
    .locals 12
    .param p1, "transit"    # I
    .param p2, "duration"    # J
    .param p4, "statusBarAnimationStartTime"    # J
    .param p6, "statusBarAnimationDuration"    # J

    .line 550
    move-object v0, p0

    const/4 v1, 0x0

    .line 551
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 552
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(IJJJ)I

    move-result v3

    or-int/2addr v1, v3

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private notifyAppTransitionTimeoutLocked()V
    .locals 2

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionTimeoutLocked()V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private prepare()Z
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 436
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 437
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 438
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 439
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 838
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 840
    return-void
.end method

.method private setAppTransition(II)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 350
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 351
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 352
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 354
    return-void
.end method

.method private setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 2408
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 2409
    .local v0, "callback":Landroid/os/IRemoteCallback;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2410
    new-instance v1, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2424
    :cond_0
    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 495
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 497
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 2364
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .line 2173
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2193
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2191
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2179
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2189
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2187
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2185
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2183
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2181
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2177
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2175
    :pswitch_9
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .locals 1
    .param p1, "anim"    # I
    .param p2, "transit"    # I

    .line 672
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a000f

    if-ne p1, v0, :cond_0

    .line 673
    const v0, 0x10a0012

    return v0

    .line 675
    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const v0, 0x10a000e

    if-ne p1, v0, :cond_1

    .line 676
    const v0, 0x10a0011

    return v0

    .line 678
    :cond_1
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    .line 1606
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clear()V
    .locals 2

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 473
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 474
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 475
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 476
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 477
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .locals 28
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 1269
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1270
    .local v15, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1271
    .local v16, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1272
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1273
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v17, v1

    .line 1274
    .local v17, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1275
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v18, v1

    .line 1276
    .local v18, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1277
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v19, v1, v2

    .line 1279
    .local v19, "thumbStartY":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_7

    const/16 v3, 0xe

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_3

    const/4 v1, 0x3

    if-ne v8, v1, :cond_2

    goto :goto_2

    .line 1392
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_3
    if-ne v9, v3, :cond_4

    .line 1385
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1387
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1389
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1371
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_5
    if-ne v9, v3, :cond_6

    .line 1374
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1376
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1378
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1282
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    :goto_2
    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    .line 1283
    .local v3, "scaleUp":Z
    :goto_3
    if-eqz p9, :cond_9

    if-eqz v3, :cond_9

    .line 1284
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1286
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_9
    if-eqz p9, :cond_a

    .line 1287
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1290
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1293
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1294
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1298
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1299
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1302
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1303
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1305
    move/from16 v2, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1307
    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v1, v15, v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v17, v1

    .line 1309
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_b

    .line 1310
    div-float v2, v18, v1

    float-to-int v2, v2

    .line 1311
    .local v2, "unscaledThumbHeight":I
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1314
    .end local v2    # "unscaledThumbHeight":I
    :cond_b
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1316
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1317
    if-eqz v3, :cond_c

    move/from16 v22, v1

    goto :goto_4

    :cond_c
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_4
    if-eqz v3, :cond_d

    const/high16 v23, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_d
    move/from16 v23, v1

    .line 1318
    :goto_5
    if-eqz v3, :cond_e

    move/from16 v24, v1

    goto :goto_6

    :cond_e
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_6
    if-eqz v3, :cond_f

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_f
    move/from16 v25, v1

    .line 1319
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v26, v8, v9

    .line 1320
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v27, v8, v9

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1321
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1322
    .local v8, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v9, v20

    .line 1323
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    mul-float/2addr v12, v1

    sub-float/2addr v9, v12

    .line 1324
    .local v9, "x":F
    iget-object v12, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    int-to-float v12, v12

    .line 1325
    .local v12, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v14, v20

    .line 1326
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v20

    mul-float/2addr v10, v1

    sub-float/2addr v14, v10

    .line 1330
    .local v14, "y":F
    iget-boolean v10, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v10, :cond_10

    iget v10, v11, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_10

    if-eqz v3, :cond_10

    .line 1331
    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    .end local v1    # "scale":F
    .local v20, "scale":F
    iget v1, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v15

    .end local v15    # "appWidth":I
    .local v21, "appWidth":I
    iget v15, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v10, Landroid/graphics/Rect;->top:I

    .line 1332
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v14, v1

    goto :goto_8

    .line 1330
    .end local v20    # "scale":F
    .end local v21    # "appWidth":I
    .restart local v1    # "scale":F
    .restart local v15    # "appWidth":I
    :cond_10
    move/from16 v20, v1

    move/from16 v21, v15

    .line 1334
    .end local v1    # "scale":F
    .end local v15    # "appWidth":I
    .restart local v20    # "scale":F
    .restart local v21    # "appWidth":I
    :goto_8
    sub-float v1, v8, v9

    .line 1335
    .local v1, "startX":F
    sub-float v10, v12, v14

    .line 1336
    .local v10, "startY":F
    if-eqz v3, :cond_11

    .line 1337
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move/from16 v22, v8

    .end local v8    # "targetX":F
    .local v22, "targetX":F
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v23, v9

    .end local v9    # "x":F
    .local v23, "x":F
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_9

    .line 1338
    .end local v22    # "targetX":F
    .end local v23    # "x":F
    .restart local v8    # "targetX":F
    .restart local v9    # "x":F
    :cond_11
    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8    # "targetX":F
    .end local v9    # "x":F
    .restart local v22    # "targetX":F
    .restart local v23    # "x":F
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_9
    move-object v8, v15

    .line 1339
    .local v8, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_12

    .line 1340
    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    const/4 v15, 0x0

    invoke-direct {v7, v1, v15, v9, v15}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_a

    .line 1341
    :cond_12
    const/4 v15, 0x0

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    invoke-direct {v7, v15, v1, v15, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    :goto_a
    nop

    .line 1343
    .local v9, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1345
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1347
    .end local v1    # "startX":F
    .end local v2    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v8    # "clipAnim":Landroid/view/animation/Animation;
    .end local v9    # "translateAnim":Landroid/view/animation/Animation;
    .end local v10    # "startY":F
    .end local v12    # "targetY":F
    .end local v14    # "y":F
    .end local v20    # "scale":F
    .end local v22    # "targetX":F
    .end local v23    # "x":F
    goto :goto_d

    .line 1349
    .end local v21    # "appWidth":I
    .restart local v15    # "appWidth":I
    :cond_13
    move/from16 v21, v15

    .end local v15    # "appWidth":I
    .restart local v21    # "appWidth":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1350
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1352
    if-eqz v3, :cond_14

    .line 1353
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_b

    .line 1354
    :cond_14
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_b
    nop

    .line 1355
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_15

    .line 1356
    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_c

    .line 1358
    :cond_15
    const/4 v9, 0x0

    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    invoke-direct {v7, v9, v2, v9, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_c
    nop

    .line 1361
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1362
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1364
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_d
    move-object v1, v0

    .line 1365
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1367
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    move-object v8, v1

    .line 1395
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v3    # "scaleUp":Z
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_e
    nop

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 1395
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v21

    move/from16 v3, v16

    move v14, v4

    move v15, v5

    .end local v4    # "thumbHeightI":I
    .end local v5    # "thumbStartX":I
    .local v14, "thumbHeightI":I
    .local v15, "thumbStartX":I
    move-wide v4, v9

    move v9, v6

    .end local v6    # "thumbWidthI":I
    .local v9, "thumbWidthI":I
    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p1, "thumbnailDrawableRes"    # I
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 1073
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1074
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1076
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1077
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1078
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1079
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1081
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1082
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1087
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1088
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1089
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1091
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 1095
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1097
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1098
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1097
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;Lcom/android/server/wm/WindowContainer;II)Landroid/view/animation/Animation;
    .locals 30
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    .line 1108
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1109
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_0

    int-to-float v1, v10

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v11, v1

    .line 1110
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1111
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1113
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1114
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1121
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1123
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1127
    .local v2, "fromY":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v21, v0

    mul-float/2addr v3, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 1128
    .local v3, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v0, v21

    sub-float v15, v0, v15

    mul-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 1129
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1130
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1131
    .local v0, "pivotY":F
    move/from16 v16, v0

    .end local v0    # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v0, :cond_1

    .line 1134
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1135
    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    move v0, v14

    move/from16 v23, v15

    move/from16 v22, v16

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    goto :goto_1

    .line 1131
    :cond_1
    move v0, v14

    move/from16 v23, v15

    move/from16 v22, v16

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    goto :goto_1

    .line 1138
    .end local v1    # "fromX":F
    .end local v2    # "fromY":F
    .end local v3    # "toX":F
    .end local v14    # "toY":F
    .end local v15    # "pivotX":F
    .end local v16    # "pivotY":F
    :cond_2
    const/4 v15, 0x0

    .line 1139
    .restart local v15    # "pivotX":F
    const/4 v0, 0x0

    .line 1140
    .restart local v0    # "pivotY":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1141
    .restart local v1    # "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1142
    .restart local v2    # "fromY":F
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 1143
    .restart local v3    # "toX":F
    iget v14, v8, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v0

    move v0, v14

    move/from16 v23, v15

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    .line 1145
    .end local v15    # "pivotX":F
    .local v0, "toY":F
    .local v1, "toX":F
    .local v3, "fromX":F
    .local v22, "pivotY":F
    .local v23, "pivotX":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1146
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1147
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v16, v14

    .end local v14    # "duration":J
    .local v16, "duration":J
    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_7

    .line 1149
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move v5, v14

    move-wide/from16 v24, v16

    .end local v16    # "duration":J
    .local v24, "duration":J
    move-object v14, v4

    move v5, v15

    move/from16 v15, v18

    move/from16 v16, v21

    move/from16 v17, v19

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v22

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1150
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1151
    move-wide/from16 v14, v24

    .end local v24    # "duration":J
    .restart local v14    # "duration":J
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1152
    move/from16 v24, v11

    .end local v11    # "thumbWidth":F
    .local v24, "thumbWidth":F
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v25, v13

    const/high16 v13, 0x3f800000    # 1.0f

    .end local v13    # "appWidth":I
    .local v25, "appWidth":I
    invoke-direct {v11, v13, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    .line 1153
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_3

    .line 1154
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1153
    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1155
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_4

    .line 1156
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    move-wide/from16 v8, v16

    goto :goto_3

    .line 1157
    :cond_4
    move-wide v8, v14

    .line 1155
    :goto_3
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1158
    invoke-direct {v7, v3, v1, v2, v0}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1159
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1160
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1162
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1163
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1167
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1168
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1169
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1171
    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    .line 1172
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move/from16 v26, v10

    .end local v10    # "thumbWidthI":I
    .local v26, "thumbWidthI":I
    iget v10, v9, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v27, v12

    .end local v12    # "thumbHeightI":I
    .local v27, "thumbHeightI":I
    iget v12, v9, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v21

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    move/from16 v28, v0

    .end local v0    # "toY":F
    .local v28, "toY":F
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_4

    .line 1171
    .end local v26    # "thumbWidthI":I
    .end local v27    # "thumbHeightI":I
    .end local v28    # "toY":F
    .restart local v0    # "toY":F
    .restart local v10    # "thumbWidthI":I
    .restart local v12    # "thumbHeightI":I
    :cond_5
    move/from16 v28, v0

    move/from16 v26, v10

    move/from16 v27, v12

    .line 1178
    .end local v0    # "toY":F
    .end local v10    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .restart local v26    # "thumbWidthI":I
    .restart local v27    # "thumbHeightI":I
    .restart local v28    # "toY":F
    :goto_4
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1179
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1180
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1183
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1184
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_6

    .line 1187
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1189
    :cond_6
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1190
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1191
    move-object v0, v10

    .line 1192
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .local v0, "a":Landroid/view/animation/Animation;
    move-object v12, v0

    move-wide v10, v14

    move/from16 v14, v28

    goto :goto_5

    .line 1194
    .end local v14    # "duration":J
    .end local v24    # "thumbWidth":F
    .end local v25    # "appWidth":I
    .end local v26    # "thumbWidthI":I
    .end local v27    # "thumbHeightI":I
    .end local v28    # "toY":F
    .local v0, "toY":F
    .local v10, "thumbWidthI":I
    .restart local v11    # "thumbWidth":F
    .restart local v12    # "thumbHeightI":I
    .restart local v13    # "appWidth":I
    .restart local v16    # "duration":J
    :cond_7
    move/from16 v28, v0

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v12

    move/from16 v25, v13

    move v5, v15

    move-wide/from16 v14, v16

    .end local v0    # "toY":F
    .end local v10    # "thumbWidthI":I
    .end local v11    # "thumbWidth":F
    .end local v12    # "thumbHeightI":I
    .end local v13    # "appWidth":I
    .end local v16    # "duration":J
    .restart local v14    # "duration":J
    .restart local v24    # "thumbWidth":F
    .restart local v25    # "appWidth":I
    .restart local v26    # "thumbWidthI":I
    .restart local v27    # "thumbHeightI":I
    .restart local v28    # "toY":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide v10, v14

    .end local v14    # "duration":J
    .local v10, "duration":J
    move-object v14, v0

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v23

    move/from16 v20, v22

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1195
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1196
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1197
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1198
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1199
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1200
    move/from16 v14, v28

    .end local v28    # "toY":F
    .local v14, "toY":F
    invoke-direct {v7, v1, v3, v14, v2}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v5

    .line 1201
    .local v5, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1202
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1205
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1206
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1207
    iget-boolean v12, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v12, :cond_8

    .line 1209
    invoke-virtual {v8, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1211
    :cond_8
    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1212
    move-object v12, v8

    .line 1215
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v5    # "translate":Landroid/view/animation/Animation;
    .end local v8    # "set":Landroid/view/animation/AnimationSet;
    .local v12, "a":Landroid/view/animation/Animation;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v15, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v13, v1

    .end local v1    # "toX":F
    .local v13, "toX":F
    move-object v1, v12

    move/from16 v17, v2

    .end local v2    # "fromY":F
    .local v17, "fromY":F
    move/from16 v2, v25

    move/from16 v18, v3

    .end local v3    # "fromX":F
    .local v18, "fromX":F
    move v3, v4

    move-wide v4, v15

    move-object v15, v6

    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;ILcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .locals 23
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 1495
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1496
    .local v3, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1497
    .local v4, "appHeight":I
    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    .line 1499
    .local v6, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1500
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v3

    .line 1501
    .local v7, "thumbWidthI":I
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v7, :cond_1

    int-to-float v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 1502
    .local v9, "thumbWidth":F
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    goto :goto_2

    :cond_2
    move v10, v4

    .line 1503
    .local v10, "thumbHeightI":I
    :goto_2
    if-lez v10, :cond_3

    int-to-float v11, v10

    goto :goto_3

    :cond_3
    move v11, v8

    .line 1505
    .local v11, "thumbHeight":F
    :goto_3
    if-eqz v1, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v1, v13, :cond_6

    const/4 v14, 0x2

    if-eq v1, v14, :cond_5

    const/4 v14, 0x3

    if-ne v1, v14, :cond_4

    .line 1536
    int-to-float v14, v3

    div-float v14, v9, v14

    .line 1537
    .local v14, "scaleW":F
    int-to-float v15, v4

    div-float v15, v11, v15

    .line 1538
    .local v15, "scaleH":F
    new-instance v22, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 1539
    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v20

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1540
    invoke-static {v13, v15}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v21

    move v13, v15

    .end local v15    # "scaleH":F
    .local v13, "scaleH":F
    move-object/from16 v15, v22

    move/from16 v17, v14

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1542
    .local v15, "scale":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1544
    .local v1, "alpha":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1545
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1546
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1547
    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1548
    move-object v12, v8

    .line 1549
    .local v12, "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1552
    .end local v1    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "a":Landroid/view/animation/Animation;
    .end local v13    # "scaleH":F
    .end local v14    # "scaleW":F
    .end local v15    # "scale":Landroid/view/animation/Animation;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v8, "Invalid thumbnail transition state"

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1531
    :cond_5
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1532
    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1517
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_6
    const/16 v1, 0xe

    if-ne v2, v1, :cond_7

    .line 1521
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1524
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_7
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1526
    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1508
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_8
    int-to-float v1, v3

    div-float v1, v9, v1

    .line 1509
    .local v1, "scaleW":F
    int-to-float v8, v4

    div-float v8, v11, v8

    .line 1510
    .local v8, "scaleH":F
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 1511
    invoke-static {v12, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1512
    invoke-static {v12, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v1

    move v15, v8

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1513
    .restart local v12    # "a":Landroid/view/animation/Animation;
    nop

    .line 1555
    .end local v1    # "scaleW":F
    .end local v8    # "scaleH":F
    :goto_4
    invoke-virtual {v0, v12, v3, v4, v2}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 18
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 1454
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1455
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1456
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1457
    .local v5, "thumbWidth":F
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1458
    .local v6, "thumbHeightI":I
    if-lez v6, :cond_1

    int-to-float v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    .line 1460
    .local v7, "thumbHeight":F
    :goto_1
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_2

    .line 1462
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1463
    .local v8, "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1464
    .local v16, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    .line 1465
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    .line 1466
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1467
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1469
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 1470
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1473
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1474
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1475
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1476
    move-object v4, v10

    .line 1477
    .end local v8    # "scaleW":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1479
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1480
    .restart local v8    # "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1481
    .restart local v16    # "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    .line 1482
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    .line 1483
    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v4, v17

    .line 1486
    .end local v8    # "scaleW":F
    .end local v16    # "scaleH":F
    .restart local v4    # "a":Landroid/view/animation/Animation;
    :goto_2
    move/from16 v8, p3

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v9

    return-object v9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 2209
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const-string v1, "mNextAppTransitionPackage="

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2222
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2225
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    goto/16 :goto_0

    .line 2243
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    .line 2228
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2231
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2233
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2235
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2237
    goto :goto_0

    .line 2214
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2217
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2219
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    nop

    .line 2252
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 2253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2256
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 2257
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastChangingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2198
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2199
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2200
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2201
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2202
    return-void
.end method

.method freeze()V
    .locals 3

    .line 480
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 485
    .local v0, "transit":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_0

    .line 486
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 488
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 489
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 490
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 491
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 492
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 566
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 567
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 572
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mIsNotificationRemoteInputeDraft:Z

    if-eqz v1, :cond_1

    .line 578
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set resID as default. resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    return v0
.end method

.method getAppStackClipMode()I
    .locals 8

    .line 1856
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x8

    const/16 v5, 0x13

    const/4 v6, 0x2

    const/16 v7, 0x12

    if-eqz v0, :cond_2

    .line 1865
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v0, v7, :cond_1

    if-eq v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v5, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    const/16 v2, 0x66

    if-eq v0, v2, :cond_1

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    goto :goto_1

    .line 1866
    :cond_1
    :goto_0
    move v1, v6

    .line 1857
    :goto_1
    return v1

    .line 1873
    :cond_2
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_4

    iget v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v5, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 1875
    :cond_3
    goto :goto_3

    .line 1874
    :cond_4
    :goto_2
    move v1, v6

    .line 1869
    :goto_3
    return v1
.end method

.method getAppTransition()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/graphics/GraphicBuffer;
    .locals 2
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 393
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 396
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDefaultWindowAnimationStyleResId()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .line 853
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .line 846
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getLastRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 823
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 822
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 824
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 827
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 828
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting rect for container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requested, but not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "WindowManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 834
    :goto_1
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getRemoteTransitTypeId()I
    .locals 1

    .line 1631
    const/16 v0, 0xa

    .line 1632
    .local v0, "id":I
    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .line 1052
    if-eqz p1, :cond_1

    .line 1053
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1059
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 1060
    const/4 v0, 0x1

    return v0

    .line 1062
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .locals 1

    .line 1880
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;)I
    .locals 12
    .param p1, "transit"    # I
    .param p2, "topOpeningApp"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .line 449
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 451
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 453
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 454
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 456
    .local v0, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    :cond_1
    nop

    .line 457
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    move-wide v6, v2

    .line 458
    if-eqz v0, :cond_3

    .line 459
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_2

    .line 460
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    :goto_2
    const-wide/16 v10, 0x78

    .line 456
    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(IJJJ)I

    move-result v2

    .line 463
    .local v2, "redoLayout":I
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v3, :cond_4

    .line 464
    invoke-virtual {v3}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 466
    :cond_4
    return v2
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    .line 421
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 2

    .line 416
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .locals 2

    .line 411
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    .line 401
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .line 365
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 2

    .line 375
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    .line 383
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .line 342
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    .line 338
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$fetchAppTransitionSpecsFromFuture$1$AppTransition(Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 5
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2050
    const/4 v0, 0x0

    .line 2052
    .local v0, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2053
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2056
    goto :goto_0

    .line 2054
    :catch_0
    move-exception v1

    .line 2055
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch app transition specs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2058
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2059
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2062
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2063
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2064
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2065
    return-void

    .line 2064
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public synthetic lambda$new$0$AppTransition()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "stableInsets"    # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "freeform"    # Z
    .param p13, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 1662
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v14, :cond_0

    .line 1663
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v1, p13

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1664
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v0, 0x16

    if-ne v13, v0, :cond_1

    .line 1665
    const/4 v0, 0x0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1666
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    const/16 v1, 0x17

    if-ne v13, v1, :cond_2

    if-nez v14, :cond_2

    .line 1667
    const v0, 0x10a00c9

    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1668
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_3

    .line 1669
    const/4 v0, 0x0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1670
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    if-eqz p11, :cond_7

    if-eq v13, v5, :cond_4

    if-eq v13, v4, :cond_4

    if-ne v13, v3, :cond_7

    .line 1673
    :cond_4
    if-eqz v14, :cond_5

    .line 1674
    const v0, 0x10a00bc

    goto :goto_0

    .line 1675
    :cond_5
    const v0, 0x10a00bd

    .line 1673
    :goto_0
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1676
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam2":Z
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v2

    aput-object v3, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v9

    aput-object v5, v10, v6

    const v2, 0x1e5501eb

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v8, v2, v6, v7, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1828
    :cond_6
    :goto_1
    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1679
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    const/16 v8, 0xb

    const/16 v0, 0x9

    const/4 v1, 0x7

    if-eqz p11, :cond_a

    if-eq v13, v1, :cond_8

    if-eq v13, v0, :cond_8

    if-ne v13, v8, :cond_a

    .line 1682
    :cond_8
    if-eqz v14, :cond_9

    .line 1683
    const v0, 0x10a00ba

    goto :goto_2

    .line 1684
    :cond_9
    const v0, 0x10a00bb

    .line 1682
    :goto_2
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1685
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam1":Ljava/lang/String;
    move/from16 v4, p3

    .restart local v4    # "protoLogParam2":Z
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v2

    aput-object v3, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v9

    aput-object v5, v10, v6

    const v2, 0x1e5501eb

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v8, v2, v6, v7, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1687
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    goto :goto_1

    .line 1688
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    const/16 v3, 0x12

    if-ne v13, v3, :cond_c

    .line 1689
    move-object/from16 v0, p8

    invoke-direct {v11, v15, v0}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1690
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v3, :cond_b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget v4, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    int-to-long v4, v4

    .local v4, "protoLogParam1":J
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam2":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v7

    const/4 v2, 0x2

    aput-object v8, v9, v2

    const/4 v2, 0x3

    aput-object v16, v9, v2

    const v2, -0x37549bc2

    const/4 v7, 0x0

    invoke-static {v6, v2, v10, v7, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v8    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1828
    :cond_b
    move-object v0, v1

    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1694
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_c
    iget v6, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v6, v7, :cond_f

    .line 1695
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 1696
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_3

    :cond_d
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1695
    :goto_3
    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1697
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    move/from16 v4, p3

    const/4 v5, 0x3

    .local v4, "protoLogParam2":Z
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x1ef703be

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v2

    aput-object v3, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v10, v7

    aput-object v6, v10, v5

    const/16 v2, 0x30

    const/4 v5, 0x0

    invoke-static {v8, v9, v2, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    :cond_e
    invoke-direct {v11, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1702
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_f
    if-ne v6, v1, :cond_10

    .line 1703
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1704
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .restart local v3    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x56e72bcc

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v3, v4, v7

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v7, 0x0

    invoke-static {v6, v8, v2, v7, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1708
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_10
    if-ne v6, v4, :cond_11

    .line 1709
    move-object/from16 v9, p7

    invoke-direct {v11, v13, v14, v15, v9}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1710
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .restart local v3    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x1060b74d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v3, v4, v7

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v7, 0x0

    invoke-static {v6, v8, v2, v7, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1713
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1714
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_11
    move-object/from16 v9, p7

    const/4 v1, 0x2

    if-ne v6, v1, :cond_12

    .line 1715
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1716
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .local v4, "protoLogParam2":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x78e35030

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v2

    aput-object v3, v10, v7

    const/4 v7, 0x2

    aput-object v4, v10, v7

    const/4 v7, 0x3

    aput-object v6, v10, v7

    const/4 v7, 0x0

    invoke-static {v8, v5, v2, v7, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1719
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    goto/16 :goto_1

    .line 1720
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_12
    const/4 v1, 0x3

    const/16 v7, 0xc0

    const v2, -0x6f98dbad

    const/4 v0, 0x5

    if-eq v6, v1, :cond_2a

    if-ne v6, v10, :cond_13

    move v12, v0

    move/from16 v17, v10

    const/4 v9, 0x3

    const/16 v16, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x2

    goto/16 :goto_15

    .line 1732
    :cond_13
    if-eq v6, v0, :cond_27

    if-ne v6, v5, :cond_14

    move/from16 v17, v10

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    goto/16 :goto_12

    .line 1746
    :cond_14
    const/16 v1, 0x9

    if-ne v6, v1, :cond_15

    if-eqz v14, :cond_15

    .line 1747
    const v0, 0x10a00b2

    const-string v1, "android"

    invoke-direct {v11, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1749
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x5ebf881d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v3, v7

    const/4 v8, 0x1

    aput-object v2, v3, v8

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1753
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_15
    const/16 v2, 0x1b

    if-ne v13, v2, :cond_16

    .line 1755
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1756
    .restart local v0    # "a":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1757
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    move/from16 v3, p3

    const/4 v4, 0x3

    .local v3, "protoLogParam2":Z
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x6efffb83

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    const/4 v10, 0x1

    aput-object v2, v8, v10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v16, 0x2

    aput-object v10, v8, v16

    aput-object v5, v8, v4

    const/16 v4, 0x30

    const/4 v10, 0x0

    invoke-static {v6, v7, v4, v10, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1759
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    goto/16 :goto_1

    .line 1761
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_16
    const/4 v2, 0x0

    .line 1762
    .local v2, "animAttr":I
    const/16 v6, 0x13

    if-eq v13, v6, :cond_23

    const/16 v7, 0x18

    if-eq v13, v7, :cond_21

    const/16 v1, 0x19

    if-eq v13, v1, :cond_1f

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_f

    .line 1817
    :pswitch_0
    if-eqz v14, :cond_17

    .line 1818
    const/16 v7, 0x19

    goto :goto_4

    .line 1819
    :cond_17
    nop

    :goto_4
    move v2, v7

    goto/16 :goto_f

    .line 1812
    :pswitch_1
    if-eqz v14, :cond_18

    .line 1813
    const/16 v19, 0x16

    goto :goto_5

    .line 1814
    :cond_18
    const/16 v19, 0x17

    :goto_5
    move/from16 v2, v19

    .line 1815
    goto/16 :goto_f

    .line 1807
    :pswitch_2
    if-eqz v14, :cond_19

    .line 1808
    const/16 v1, 0x14

    goto :goto_6

    .line 1809
    :cond_19
    const/16 v1, 0x15

    :goto_6
    move v2, v1

    .line 1810
    goto :goto_f

    .line 1797
    :pswitch_3
    if-eqz v14, :cond_1a

    .line 1798
    const/16 v1, 0x10

    goto :goto_7

    .line 1799
    :cond_1a
    const/16 v1, 0x11

    :goto_7
    move v2, v1

    .line 1800
    goto :goto_f

    .line 1802
    :pswitch_4
    if-eqz v14, :cond_1b

    .line 1803
    goto :goto_8

    .line 1804
    :cond_1b
    move v3, v6

    :goto_8
    move v2, v3

    .line 1805
    goto :goto_f

    .line 1792
    :pswitch_5
    if-eqz v14, :cond_1c

    .line 1793
    const/16 v1, 0xe

    goto :goto_9

    .line 1794
    :cond_1c
    const/16 v1, 0xf

    :goto_9
    move v2, v1

    .line 1795
    goto :goto_f

    .line 1787
    :pswitch_6
    if-eqz v14, :cond_1d

    .line 1788
    const/16 v1, 0xc

    goto :goto_a

    .line 1789
    :cond_1d
    const/16 v1, 0xd

    :goto_a
    move v2, v1

    .line 1790
    goto :goto_f

    .line 1782
    :pswitch_7
    if-eqz v14, :cond_1e

    .line 1783
    const/16 v3, 0xa

    goto :goto_b

    .line 1784
    :cond_1e
    move v3, v8

    :goto_b
    move v2, v3

    .line 1785
    goto :goto_f

    .line 1771
    :cond_1f
    :pswitch_8
    if-eqz v14, :cond_20

    .line 1772
    goto :goto_c

    .line 1773
    :cond_20
    const/4 v5, 0x7

    :goto_c
    move v2, v5

    .line 1774
    goto :goto_f

    .line 1765
    :cond_21
    :pswitch_9
    if-eqz v14, :cond_22

    .line 1766
    move v1, v10

    goto :goto_d

    .line 1767
    :cond_22
    move v1, v0

    :goto_d
    move v2, v1

    .line 1768
    goto :goto_f

    .line 1777
    :cond_23
    :pswitch_a
    if-eqz v14, :cond_24

    .line 1778
    goto :goto_e

    .line 1779
    :cond_24
    const/16 v4, 0x9

    :goto_e
    move v2, v4

    .line 1780
    nop

    .line 1821
    :goto_f
    if-eqz v2, :cond_25

    invoke-virtual {v11, v12, v2, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_10

    :cond_25
    const/4 v7, 0x0

    :goto_10
    move-object v1, v7

    .line 1822
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v3, :cond_26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    int-to-long v4, v2

    .local v4, "protoLogParam1":J
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam2":Ljava/lang/String;
    move/from16 v7, p3

    const/4 v8, 0x3

    .local v7, "protoLogParam3":Z
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam4":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v8, 0xc4

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v3, v0, v20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v23, 0x1

    aput-object v20, v0, v23

    const/16 v22, 0x2

    aput-object v6, v0, v22

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x3

    aput-object v20, v0, v21

    const/16 v17, 0x4

    aput-object v16, v0, v17

    move-object/from16 v24, v1

    const v1, 0x7f664f33

    const/4 v9, 0x0

    .end local v1    # "a":Landroid/view/animation/Animation;
    .local v24, "a":Landroid/view/animation/Animation;
    invoke-static {v10, v1, v8, v9, v0}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v6    # "protoLogParam2":Ljava/lang/String;
    .end local v7    # "protoLogParam3":Z
    .end local v16    # "protoLogParam4":Ljava/lang/String;
    .end local v24    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "a":Landroid/view/animation/Animation;
    :cond_26
    move-object/from16 v24, v1

    .line 1828
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v2    # "animAttr":I
    .restart local v24    # "a":Landroid/view/animation/Animation;
    :goto_11
    move-object/from16 v1, p13

    move-object/from16 v0, v24

    goto/16 :goto_18

    .line 1732
    .end local v24    # "a":Landroid/view/animation/Animation;
    :cond_27
    move/from16 v17, v10

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    .line 1734
    :goto_12
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v0, :cond_28

    move/from16 v1, v23

    goto :goto_13

    :cond_28
    move/from16 v1, v20

    :goto_13
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1736
    nop

    .line 1737
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1736
    move v10, v0

    move-object/from16 v0, p0

    move v8, v2

    move/from16 v16, v20

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v18, v21

    move-object/from16 v6, p8

    move v12, v7

    move/from16 v19, v23

    move-object/from16 v7, p9

    move-object v12, v9

    move v9, v8

    move-object/from16 v8, p10

    move v12, v9

    move/from16 v9, p12

    move v12, v10

    move-object/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1739
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    iget-boolean v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_29

    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_14

    :cond_29
    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    :goto_14
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam3":Z
    invoke-static/range {v18 .. v18}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam4":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v16

    aput-object v2, v7, v19

    aput-object v3, v7, v22

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 v9, v18

    aput-object v8, v7, v9

    aput-object v5, v7, v17

    const/16 v8, 0xc0

    const v9, -0x6f98dbad

    const/4 v10, 0x0

    invoke-static {v6, v9, v8, v10, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Z
    .end local v5    # "protoLogParam4":Ljava/lang/String;
    goto/16 :goto_1

    .line 1720
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2a
    move v12, v0

    move v9, v1

    move/from16 v17, v10

    const/16 v16, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x2

    .line 1722
    :goto_15
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v9, :cond_2b

    move/from16 v7, v19

    goto :goto_16

    :cond_2b
    move/from16 v7, v16

    :goto_16
    iput-boolean v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1724
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v0

    move-object/from16 v1, p13

    invoke-virtual {v11, v0, v15, v13, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;ILcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1726
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-boolean v3, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_2c

    const-string v3, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_17

    :cond_2c
    const-string v3, "ANIM_THUMBNAIL_SCALE_DOWN"

    :goto_17
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    move/from16 v5, p3

    .local v5, "protoLogParam3":Z
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam4":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v16

    aput-object v3, v8, v19

    aput-object v4, v8, v22

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v6, v8, v17

    const/16 v9, 0xc0

    const v10, -0x6f98dbad

    const/4 v12, 0x0

    invoke-static {v7, v10, v9, v12, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1731
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v5    # "protoLogParam3":Z
    .end local v6    # "protoLogParam4":Ljava/lang/String;
    nop

    .line 1828
    :cond_2d
    :goto_18
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 625
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 626
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 627
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 628
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 629
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 632
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 633
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 636
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 664
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "WindowManager"

    const-string v2, "Unable to load animation resource"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 2016
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2018
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2019
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 2020
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 2022
    :cond_0
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "endedCallback"    # Landroid/os/IRemoteCallback;

    .line 1893
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1895
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1896
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1897
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1898
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1900
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1901
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1903
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .line 1940
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1942
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1943
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1944
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1945
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1948
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1950
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1917
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1919
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1920
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1923
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 11
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1955
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1957
    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1958
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1959
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1960
    if-eqz p1, :cond_3

    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1962
    aget-object v1, p1, v0

    .line 1963
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_2

    .line 1964
    sget-object v2, Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;

    const-class v3, Lcom/android/server/wm/Task;

    .line 1965
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget v4, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1964
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    .line 1966
    .local v2, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1967
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1968
    if-nez v3, :cond_1

    .line 1969
    goto :goto_2

    .line 1971
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1972
    if-nez v0, :cond_2

    .line 1975
    iget-object v4, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1976
    .local v4, "rect":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 1977
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1976
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1961
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1982
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1983
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1984
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1986
    :cond_4
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1991
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1993
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1994
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1995
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1996
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1997
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1998
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1999
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 2002
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 9
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 2005
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    .local v0, "protoLogParam0":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x565929b6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2007
    .end local v0    # "protoLogParam0":Z
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2009
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2010
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 2013
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1907
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1909
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1910
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1913
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    .line 2028
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2030
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2031
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2033
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 1927
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1929
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1930
    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1931
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1932
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1934
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1936
    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 3

    .line 1884
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1889
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 18
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2278
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    move/from16 v7, p2

    .local v7, "protoLogParam2":Z
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    int-to-long v8, v8

    .local v8, "protoLogParam3":J
    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam4":Ljava/lang/String;
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x782aa822

    const/16 v14, 0x70

    const/4 v15, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v5

    aput-object v6, v10, v4

    const/16 v16, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v10, v16

    const/16 v16, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v10, v16

    const/16 v16, 0x4

    aput-object v11, v10, v16

    invoke-static {v12, v13, v14, v15, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2283
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    .end local v7    # "protoLogParam2":Z
    .end local v8    # "protoLogParam3":J
    .end local v11    # "protoLogParam4":Ljava/lang/String;
    :cond_0
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v3

    const/16 v6, 0x1a

    if-nez v3, :cond_1

    if-ne v1, v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    move v3, v4

    .line 2285
    .local v3, "allowSetCrashing":Z
    if-nez p4, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v4, :cond_5

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2292
    :cond_2
    if-nez p2, :cond_6

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v4, v6, :cond_6

    .line 2294
    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2296
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2297
    :cond_3
    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    const/4 v4, 0x7

    .line 2298
    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2300
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2301
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2304
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2287
    :cond_5
    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2307
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v4

    .line 2308
    .local v4, "prepared":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2309
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2310
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2312
    :cond_7
    return v4
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 1035
    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    const/4 v0, 0x7

    if-eq p4, v0, :cond_0

    .line 1041
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_0

    .line 1038
    .end local v0    # "duration":I
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 1039
    .restart local v0    # "duration":I
    nop

    .line 1044
    :goto_0
    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1016
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 1017
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1019
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1020
    if-eqz p6, :cond_1

    .line 1021
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1023
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1024
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .locals 2

    .line 2427
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2428
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 2269
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2270
    return-void
.end method

.method setIdle()V
    .locals 1

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 380
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "closingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "changingApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 358
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 362
    return-void
.end method

.method setLastRemoteAnimationController(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 1623
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1624
    return-void
.end method

.method setNextAppTransitionType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1627
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1628
    return-void
.end method

.method setReady()V
    .locals 1

    .line 370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 372
    return-void
.end method

.method setTimeout()V
    .locals 1

    .line 387
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method updateBooster()V
    .locals 2

    .line 505
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 506
    return-void
.end method
