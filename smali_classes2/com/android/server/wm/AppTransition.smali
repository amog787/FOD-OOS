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

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 168
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

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 186
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 209
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 245
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 254
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 258
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 259
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 262
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 280
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 283
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 284
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 285
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 286
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 287
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 289
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 295
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 297
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 309
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 322
    const-string v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 323
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 327
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IRemoteCallback;

    .line 153
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .line 2127
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2135
    :cond_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2133
    :cond_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2131
    :cond_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2129
    :cond_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "transition"    # I

    .line 2050
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2121
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

    .line 2115
    :pswitch_0
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2112
    :pswitch_1
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2109
    :pswitch_2
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2106
    :pswitch_3
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2103
    :pswitch_4
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2100
    :pswitch_5
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2097
    :pswitch_6
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2094
    :pswitch_7
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2091
    :pswitch_8
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2088
    :pswitch_9
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2085
    :pswitch_a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2082
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2079
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2076
    :pswitch_d
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 2073
    :pswitch_e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 2070
    :pswitch_f
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 2067
    :pswitch_10
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 2064
    :pswitch_11
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 2061
    :pswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 2058
    :pswitch_13
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 2118
    :cond_0
    const-string v0, "TRANSIT_SHOW_SINGLE_TASK_DISPLAY"

    return-object v0

    .line 2055
    :cond_1
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 2052
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

    .line 871
    if-nez p1, :cond_0

    .line 872
    const-wide/16 v0, 0x150

    return-wide v0

    .line 874
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 875
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 874
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 876
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

    .line 2006
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

    .line 743
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 744
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 745
    int-to-float v1, p0

    return v1

    .line 747
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

    .line 1396
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1397
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

    .line 1403
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1404
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

    .line 1410
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 1411
    .local v3, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 1412
    .local v4, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1413
    .local v5, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1414
    .local v6, "destHeight":F
    if-eqz p4, :cond_0

    div-float v7, v3, v5

    goto :goto_0

    :cond_0
    div-float v7, v5, v3

    :goto_0
    move v9, v7

    .line 1415
    .local v9, "scaleH":F
    if-eqz p4, :cond_1

    div-float v7, v4, v6

    goto :goto_1

    :cond_1
    div-float v7, v6, v4

    :goto_1
    move v11, v7

    .line 1416
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1417
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 1418
    move v10, v8

    goto :goto_2

    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_2
    move v15, v10

    .line 1419
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3

    .line 1420
    goto :goto_3

    :cond_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_3
    move v14, v8

    .line 1423
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

    .line 1424
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

    .line 1425
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6

    .line 1426
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

    .line 1427
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

    .line 1428
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 1429
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 1430
    .local v12, "sourceVCenter":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1431
    .local v13, "destHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    .line 1432
    .local v14, "destVCenter":I
    if-eqz p4, :cond_7

    sub-int v16, v10, v13

    goto :goto_7

    :cond_7
    sub-int v16, v13, v10

    :goto_7
    move/from16 v17, v16

    .line 1433
    .local v17, "fromX":I
    if-eqz p4, :cond_8

    sub-int v16, v12, v14

    goto :goto_8

    :cond_8
    sub-int v16, v14, v12

    :goto_8
    move/from16 v18, v16

    .line 1434
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

    .line 1435
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

    .line 1436
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1437
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1438
    move-object/from16 v2, p0

    invoke-direct {v2, v7}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    .line 1439
    return-object v7
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 30
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 883
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v5, 0x1

    if-eqz p2, :cond_8

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 885
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 889
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 894
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 895
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

    .line 896
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

    .line 894
    :goto_1
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 899
    const/4 v7, 0x0

    .line 900
    .local v7, "t":F
    if-lez v15, :cond_2

    .line 901
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2

    .line 900
    :cond_2
    move/from16 v16, v7

    .line 903
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

    .line 904
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 905
    .local v8, "translationX":I
    move v9, v7

    .line 906
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 907
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 908
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 909
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 910
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 911
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 912
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 917
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v14, v18, v20

    if-le v13, v14, :cond_3

    .line 918
    sub-int v13, v18, v20

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v13, v14

    .line 919
    const/4 v9, 0x0

    .line 920
    const/4 v11, 0x0

    .line 921
    const/4 v12, 0x1

    move v14, v7

    move/from16 v21, v9

    move/from16 v22, v11

    goto :goto_3

    .line 917
    :cond_3
    move v14, v7

    move/from16 v21, v9

    move/from16 v22, v11

    .line 923
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

    .line 924
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 925
    const/4 v10, 0x0

    .line 926
    const/4 v12, 0x1

    .line 928
    :cond_4
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_5

    .line 929
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 930
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 931
    const/4 v12, 0x1

    move v13, v8

    move v11, v12

    move v12, v10

    goto :goto_4

    .line 928
    :cond_5
    move v13, v8

    move v11, v12

    move v12, v10

    .line 933
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

    .line 937
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 938
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v12

    const/4 v4, 0x0

    invoke-direct {v7, v12, v5, v4, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 939
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 940
    long-to-float v7, v8

    const/high16 v24, 0x40200000    # 2.5f

    div-float v7, v7, v24

    float-to-long v3, v7

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 942
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v13

    int-to-float v7, v14

    const/4 v2, 0x0

    invoke-direct {v3, v4, v2, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v2, v3

    .line 943
    .local v2, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v11, :cond_6

    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_5

    .line 944
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 943
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 945
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 947
    new-instance v3, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 948
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

    .line 952
    .local v3, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 953
    move-wide/from16 v7, v27

    .end local v27    # "duration":J
    .local v7, "duration":J
    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 956
    const-wide/16 v9, 0x4

    div-long v9, v7, v9

    .line 957
    .local v9, "alphaDuration":J
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 958
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 959
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 961
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 962
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 963
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 964
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 965
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 966
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 967
    invoke-virtual {v12, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 968
    move-object/from16 v23, v12

    .line 969
    .local v23, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 970
    iput-wide v7, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 974
    if-eqz v4, :cond_7

    .line 975
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

    .line 976
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

    .line 978
    .end local v23    # "anim":Landroid/view/animation/Animation;
    :cond_8
    const/4 v2, 0x6

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    .line 984
    const-wide/16 v2, 0x150

    .local v2, "duration":J
    goto :goto_7

    .line 981
    .end local v2    # "duration":J
    :cond_9
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v2, v2

    .line 982
    .restart local v2    # "duration":J
    nop

    .line 987
    :goto_7
    const/16 v4, 0xe

    if-eq v1, v4, :cond_b

    const/16 v4, 0xf

    if-ne v1, v4, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_8

    .line 997
    :cond_a
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v5, 0x1

    .local v4, "anim":Landroid/view/animation/Animation;
    goto :goto_9

    .line 987
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_b
    const/high16 v5, 0x3f800000    # 1.0f

    .line 993
    :goto_8
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 994
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 999
    :goto_9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1000
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1001
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v23, v4

    .line 1003
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

    .line 1217
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

    .line 1220
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1221
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1218
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

    .line 1226
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1227
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1229
    cmpl-float v1, p3, p4

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    if-lez v1, :cond_0

    .line 1231
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

    .line 1234
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

    .line 1236
    :goto_0
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .line 1554
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1555
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1556
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1557
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1559
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1560
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1561
    .local v2, "set":Landroid/view/animation/AnimationSet;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1562
    .local v4, "fromWidth":F
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1563
    .local v5, "toWidth":F
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1567
    .local v6, "fromHeight":F
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1568
    .local v7, "toHeight":F
    const/4 v8, 0x0

    .line 1569
    .local v8, "translateAdjustment":I
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_0

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_0

    .line 1573
    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1577
    :cond_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    .line 1587
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

    .line 1589
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1590
    const-wide/16 v10, 0x150

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1591
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1592
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    .line 753
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 755
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 756
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 758
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 759
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 760
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 761
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 762
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 763
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 765
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 766
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 768
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 769
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 770
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 771
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 772
    move-object v4, v6

    .line 773
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

    .line 783
    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 779
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 780
    .restart local v4    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 790
    :goto_1
    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/4 v6, 0x7

    if-eq v1, v6, :cond_3

    .line 796
    const-wide/16 v6, 0x150

    .local v6, "duration":J
    goto :goto_2

    .line 793
    .end local v6    # "duration":J
    :cond_3
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v6, v6

    .line 794
    .restart local v6    # "duration":J
    nop

    .line 799
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 800
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 801
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 802
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 803
    return-object v4
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/IRemoteCallback;

    .line 2371
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    goto :goto_0

    .line 2372
    :catch_0
    move-exception v0

    .line 2374
    :goto_0
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .line 2013
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2017
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2018
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2036
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .line 1240
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1241
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1243
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1248
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1251
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 582
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
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

    .line 582
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_6

    .line 589
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "android"

    .line 590
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 591
    .local v2, "resId":I
    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4

    .line 592
    const-string v0, "android"

    .line 594
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

    .line 596
    :cond_5
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    return-object v1

    .line 599
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_6
    return-object v2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 603
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

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    if-eqz p1, :cond_3

    .line 606
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_1

    .line 607
    const-string p1, "android"

    .line 609
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

    .line 611
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 614
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 809
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 814
    :goto_1
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .locals 18

    .line 2338
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2339
    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2340
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2341
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2343
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionTimeoutLocked()V

    .line 2344
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

    .line 2345
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2346
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

    .line 2356
    .end local v5    # "protoLogParam1":Z
    .end local v6    # "protoLogParam2":J
    .end local v8    # "protoLogParam3":J
    .end local v10    # "protoLogParam4":J
    .end local v16    # "protoLogParam0":J
    :cond_2
    sget-boolean v3, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v3, :cond_3

    .line 2357
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2358
    .local v3, "appsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2359
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/policy/OpQuickPayInjector;->notifyAppLaunchFailedLw(Ljava/lang/String;)V

    .line 2358
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2363
    .end local v3    # "appsCount":I
    .end local v4    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 2364
    iget-object v3, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2366
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2367
    return-void

    .line 2366
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

    .line 2311
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

    .line 2317
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

    .line 2321
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

    .line 2289
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

    .line 2294
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

    .line 2305
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

    .line 2299
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

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 636
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 638
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 639
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 641
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 643
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 647
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 649
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_0

    .line 650
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 653
    .end local v0    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "transit"    # I

    .line 1827
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 1828
    const/4 v0, 0x0

    return-object v0

    .line 1830
    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1832
    .local v0, "toShade":Z
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1834
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

    .line 504
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

    .line 505
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

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
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

    .line 545
    move-object v0, p0

    const/4 v1, 0x0

    .line 546
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 547
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

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private notifyAppTransitionTimeoutLocked()V
    .locals 2

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionTimeoutLocked()V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private prepare()Z
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 430
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 431
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 432
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 433
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 434
    const/4 v0, 0x1

    return v0

    .line 436
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

    .line 833
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 835
    return-void
.end method

.method private setAppTransition(II)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 345
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 346
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 347
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 349
    return-void
.end method

.method private setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 2377
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 2378
    .local v0, "callback":Landroid/os/IRemoteCallback;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2379
    new-instance v1, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2393
    :cond_0
    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 490
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 491
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 492
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 2333
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

    .line 2142
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2162
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

    .line 2160
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2148
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2158
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2156
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2154
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2152
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2150
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2146
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2144
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

    .line 667
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a000f

    if-ne p1, v0, :cond_0

    .line 668
    const v0, 0x10a0012

    return v0

    .line 670
    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const v0, 0x10a000e

    if-ne p1, v0, :cond_1

    .line 671
    const v0, 0x10a0011

    return v0

    .line 673
    :cond_1
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    .line 1601
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

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 468
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 469
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 470
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 471
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 472
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

    .line 1264
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

    .line 1265
    .local v15, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1266
    .local v16, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1267
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1268
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v17, v1

    .line 1269
    .local v17, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1270
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v18, v1

    .line 1271
    .local v18, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1272
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v19, v1, v2

    .line 1274
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

    .line 1387
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    :cond_3
    if-ne v9, v3, :cond_4

    .line 1380
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1382
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1384
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1366
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_5
    if-ne v9, v3, :cond_6

    .line 1369
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1371
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1373
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1277
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    :goto_2
    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    .line 1278
    .local v3, "scaleUp":Z
    :goto_3
    if-eqz p9, :cond_9

    if-eqz v3, :cond_9

    .line 1279
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1281
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_9
    if-eqz p9, :cond_a

    .line 1282
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1285
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1288
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1289
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1293
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1294
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1297
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1298
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1300
    move/from16 v2, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1302
    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v1, v15, v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v17, v1

    .line 1304
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_b

    .line 1305
    div-float v2, v18, v1

    float-to-int v2, v2

    .line 1306
    .local v2, "unscaledThumbHeight":I
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1309
    .end local v2    # "unscaledThumbHeight":I
    :cond_b
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1311
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1312
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

    .line 1313
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

    .line 1314
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v26, v8, v9

    .line 1315
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v27, v8, v9

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1316
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1317
    .local v8, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v9, v20

    .line 1318
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    mul-float/2addr v12, v1

    sub-float/2addr v9, v12

    .line 1319
    .local v9, "x":F
    iget-object v12, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    int-to-float v12, v12

    .line 1320
    .local v12, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v14, v20

    .line 1321
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v20

    mul-float/2addr v10, v1

    sub-float/2addr v14, v10

    .line 1325
    .local v14, "y":F
    iget-boolean v10, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v10, :cond_10

    iget v10, v11, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_10

    if-eqz v3, :cond_10

    .line 1326
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

    .line 1327
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v14, v1

    goto :goto_8

    .line 1325
    .end local v20    # "scale":F
    .end local v21    # "appWidth":I
    .restart local v1    # "scale":F
    .restart local v15    # "appWidth":I
    :cond_10
    move/from16 v20, v1

    move/from16 v21, v15

    .line 1329
    .end local v1    # "scale":F
    .end local v15    # "appWidth":I
    .restart local v20    # "scale":F
    .restart local v21    # "appWidth":I
    :goto_8
    sub-float v1, v8, v9

    .line 1330
    .local v1, "startX":F
    sub-float v10, v12, v14

    .line 1331
    .local v10, "startY":F
    if-eqz v3, :cond_11

    .line 1332
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

    .line 1333
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

    .line 1334
    .local v8, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_12

    .line 1335
    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    const/4 v15, 0x0

    invoke-direct {v7, v1, v15, v9, v15}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_a

    .line 1336
    :cond_12
    const/4 v15, 0x0

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    invoke-direct {v7, v15, v1, v15, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    :goto_a
    nop

    .line 1338
    .local v9, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1339
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1340
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1342
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

    .line 1344
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

    .line 1345
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1347
    if-eqz v3, :cond_14

    .line 1348
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_b

    .line 1349
    :cond_14
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_b
    nop

    .line 1350
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_15

    .line 1351
    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_c

    .line 1353
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

    .line 1356
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1357
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1359
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_d
    move-object v1, v0

    .line 1360
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1362
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    move-object v8, v1

    .line 1390
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v3    # "scaleUp":Z
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_e
    nop

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 1390
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

    .line 1068
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1069
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1071
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1072
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1073
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1074
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1076
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1077
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

    .line 1082
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1083
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1084
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1086
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 1090
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1092
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1093
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1092
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

    .line 1103
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1104
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_0

    int-to-float v1, v10

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v11, v1

    .line 1105
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1106
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1108
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1109
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    .line 1116
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1117
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1118
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1122
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

    .line 1123
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

    .line 1124
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1125
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1126
    .local v0, "pivotY":F
    move/from16 v16, v0

    .end local v0    # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v0, :cond_1

    .line 1129
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1130
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

    .line 1126
    :cond_1
    move v0, v14

    move/from16 v23, v15

    move/from16 v22, v16

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    goto :goto_1

    .line 1133
    .end local v1    # "fromX":F
    .end local v2    # "fromY":F
    .end local v3    # "toX":F
    .end local v14    # "toY":F
    .end local v15    # "pivotX":F
    .end local v16    # "pivotY":F
    :cond_2
    const/4 v15, 0x0

    .line 1134
    .restart local v15    # "pivotX":F
    const/4 v0, 0x0

    .line 1135
    .restart local v0    # "pivotY":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1136
    .restart local v1    # "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1137
    .restart local v2    # "fromY":F
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 1138
    .restart local v3    # "toX":F
    iget v14, v8, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v0

    move v0, v14

    move/from16 v23, v15

    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    .line 1140
    .end local v15    # "pivotX":F
    .local v0, "toY":F
    .local v1, "toX":F
    .local v3, "fromX":F
    .local v22, "pivotY":F
    .local v23, "pivotX":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1141
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1142
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v16, v14

    .end local v14    # "duration":J
    .local v16, "duration":J
    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_7

    .line 1144
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

    .line 1145
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    move-wide/from16 v14, v24

    .end local v24    # "duration":J
    .restart local v14    # "duration":J
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1147
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

    .line 1148
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_3

    .line 1149
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1148
    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1150
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_4

    .line 1151
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    move-wide/from16 v8, v16

    goto :goto_3

    .line 1152
    :cond_4
    move-wide v8, v14

    .line 1150
    :goto_3
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1153
    invoke-direct {v7, v3, v1, v2, v0}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1154
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1155
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1157
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1158
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1162
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1163
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1164
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1166
    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    .line 1167
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

    .line 1166
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

    .line 1173
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

    .line 1174
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1175
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1178
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1179
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1180
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_6

    .line 1182
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    :cond_6
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    move-object v0, v10

    .line 1187
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .local v0, "a":Landroid/view/animation/Animation;
    move-object v12, v0

    move-wide v10, v14

    move/from16 v14, v28

    goto :goto_5

    .line 1189
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

    .line 1190
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1191
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1192
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1193
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1194
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1195
    move/from16 v14, v28

    .end local v28    # "toY":F
    .local v14, "toY":F
    invoke-direct {v7, v1, v3, v14, v2}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v5

    .line 1196
    .local v5, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1197
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1200
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1201
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    iget-boolean v12, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v12, :cond_8

    .line 1204
    invoke-virtual {v8, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1206
    :cond_8
    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1207
    move-object v12, v8

    .line 1210
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

    .line 1490
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1491
    .local v3, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1492
    .local v4, "appHeight":I
    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    .line 1494
    .local v6, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1495
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v3

    .line 1496
    .local v7, "thumbWidthI":I
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v7, :cond_1

    int-to-float v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 1497
    .local v9, "thumbWidth":F
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    goto :goto_2

    :cond_2
    move v10, v4

    .line 1498
    .local v10, "thumbHeightI":I
    :goto_2
    if-lez v10, :cond_3

    int-to-float v11, v10

    goto :goto_3

    :cond_3
    move v11, v8

    .line 1500
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

    .line 1531
    int-to-float v14, v3

    div-float v14, v9, v14

    .line 1532
    .local v14, "scaleW":F
    int-to-float v15, v4

    div-float v15, v11, v15

    .line 1533
    .local v15, "scaleH":F
    new-instance v22, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 1534
    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v20

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1535
    invoke-static {v13, v15}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v21

    move v13, v15

    .end local v15    # "scaleH":F
    .local v13, "scaleH":F
    move-object/from16 v15, v22

    move/from16 v17, v14

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1537
    .local v15, "scale":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1539
    .local v1, "alpha":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1540
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1541
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1543
    move-object v12, v8

    .line 1544
    .local v12, "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1547
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

    .line 1526
    :cond_5
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1527
    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1512
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_6
    const/16 v1, 0xe

    if-ne v2, v1, :cond_7

    .line 1516
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1519
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_7
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v1

    .line 1521
    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1503
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_8
    int-to-float v1, v3

    div-float v1, v9, v1

    .line 1504
    .local v1, "scaleW":F
    int-to-float v8, v4

    div-float v8, v11, v8

    .line 1505
    .local v8, "scaleH":F
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 1506
    invoke-static {v12, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1507
    invoke-static {v12, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v1

    move v15, v8

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1508
    .restart local v12    # "a":Landroid/view/animation/Animation;
    nop

    .line 1550
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

    .line 1449
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1450
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1451
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1452
    .local v5, "thumbWidth":F
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1453
    .local v6, "thumbHeightI":I
    if-lez v6, :cond_1

    int-to-float v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    .line 1455
    .local v7, "thumbHeight":F
    :goto_1
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_2

    .line 1457
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1458
    .local v8, "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1459
    .local v16, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    .line 1460
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    .line 1461
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1462
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1464
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 1465
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1468
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1469
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1470
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1471
    move-object v4, v10

    .line 1472
    .end local v8    # "scaleW":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1474
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1475
    .restart local v8    # "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1476
    .restart local v16    # "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    .line 1477
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    .line 1478
    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v4, v17

    .line 1481
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

    .line 2175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 2178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const-string v1, "mNextAppTransitionPackage="

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2191
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    goto/16 :goto_0

    .line 2212
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2217
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    .line 2197
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2200
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2204
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2206
    goto :goto_0

    .line 2183
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    nop

    .line 2221
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 2222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2225
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 2226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastChangingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
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

    .line 2167
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2168
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2169
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2170
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2171
    return-void
.end method

.method freeze()V
    .locals 3

    .line 475
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 480
    .local v0, "transit":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_0

    .line 481
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 483
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 486
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 487
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 561
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 562
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 567
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mIsNotificationRemoteInputeDraft:Z

    if-eqz v1, :cond_1

    .line 573
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 574
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

    .line 578
    :cond_1
    return v0
.end method

.method getAppStackClipMode()I
    .locals 3

    .line 1843
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1845
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1844
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 1839
    :goto_1
    return v0
.end method

.method getAppTransition()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/graphics/GraphicBuffer;
    .locals 2
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 388
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 391
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

    .line 555
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .line 848
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .line 841
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getLastRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getNextAppTransitionStartRect(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 818
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 817
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 819
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 822
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 823
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

    .line 825
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 829
    :goto_1
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getRemoteTransitTypeId()I
    .locals 1

    .line 1626
    const/16 v0, 0xa

    .line 1627
    .local v0, "id":I
    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .line 1047
    if-eqz p1, :cond_1

    .line 1048
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    return v0

    .line 1051
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1054
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 1055
    const/4 v0, 0x1

    return v0

    .line 1057
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .locals 1

    .line 1849
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

    .line 444
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 446
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 448
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 449
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 451
    .local v0, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    :cond_1
    nop

    .line 452
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    move-wide v6, v2

    .line 453
    if-eqz v0, :cond_3

    .line 454
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_2

    .line 455
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    :goto_2
    const-wide/16 v10, 0x78

    .line 451
    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(IJJJ)I

    move-result v2

    .line 458
    .local v2, "redoLayout":I
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v3, :cond_4

    .line 459
    invoke-virtual {v3}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 461
    :cond_4
    return v2
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    .line 416
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

    .line 411
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

    .line 406
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

    .line 396
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

    .line 402
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .line 360
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

    .line 370
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

    .line 378
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

    .line 337
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

    .line 333
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

    .line 2019
    const/4 v0, 0x0

    .line 2021
    .local v0, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2022
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2025
    goto :goto_0

    .line 2023
    :catch_0
    move-exception v1

    .line 2024
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

    .line 2026
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2027
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2028
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2031
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2032
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2033
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2034
    return-void

    .line 2033
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

    .line 280
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

    .line 1657
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v14, :cond_0

    .line 1658
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v1, p13

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1659
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v0, 0x16

    if-ne v13, v0, :cond_1

    .line 1660
    const/4 v0, 0x0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1661
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    const/16 v1, 0x17

    if-ne v13, v1, :cond_2

    if-nez v14, :cond_2

    .line 1662
    const v0, 0x10a00c9

    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1663
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_3

    .line 1664
    const/4 v0, 0x0

    move-object/from16 v1, p13

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_18

    .line 1665
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

    .line 1668
    :cond_4
    if-eqz v14, :cond_5

    .line 1669
    const v0, 0x10a00bc

    goto :goto_0

    .line 1670
    :cond_5
    const v0, 0x10a00bd

    .line 1668
    :goto_0
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1671
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

    .line 1673
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1823
    :cond_6
    :goto_1
    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1674
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    const/16 v8, 0xb

    const/16 v0, 0x9

    const/4 v1, 0x7

    if-eqz p11, :cond_a

    if-eq v13, v1, :cond_8

    if-eq v13, v0, :cond_8

    if-ne v13, v8, :cond_a

    .line 1677
    :cond_8
    if-eqz v14, :cond_9

    .line 1678
    const v0, 0x10a00ba

    goto :goto_2

    .line 1679
    :cond_9
    const v0, 0x10a00bb

    .line 1677
    :goto_2
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1680
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

    .line 1682
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    goto :goto_1

    .line 1683
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    const/16 v3, 0x12

    if-ne v13, v3, :cond_c

    .line 1684
    move-object/from16 v0, p8

    invoke-direct {v11, v15, v0}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1685
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

    .line 1688
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v8    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1823
    :cond_b
    move-object v0, v1

    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1689
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_c
    iget v6, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v6, v7, :cond_f

    .line 1690
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 1691
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_3

    :cond_d
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1690
    :goto_3
    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1692
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

    .line 1696
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    :cond_e
    invoke-direct {v11, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    move-object/from16 v1, p13

    goto/16 :goto_18

    .line 1697
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_f
    if-ne v6, v1, :cond_10

    .line 1698
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1699
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

    .line 1702
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1703
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_10
    if-ne v6, v4, :cond_11

    .line 1704
    move-object/from16 v9, p7

    invoke-direct {v11, v13, v14, v15, v9}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1705
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

    .line 1708
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1709
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_11
    move-object/from16 v9, p7

    const/4 v1, 0x2

    if-ne v6, v1, :cond_12

    .line 1710
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1711
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

    .line 1714
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    goto/16 :goto_1

    .line 1715
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

    .line 1727
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

    .line 1741
    :cond_14
    const/16 v1, 0x9

    if-ne v6, v1, :cond_15

    if-eqz v14, :cond_15

    .line 1742
    const v0, 0x10a00b2

    const-string v1, "android"

    invoke-direct {v11, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1744
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

    .line 1747
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_1

    .line 1748
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_15
    const/16 v2, 0x1b

    if-ne v13, v2, :cond_16

    .line 1750
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1751
    .restart local v0    # "a":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1752
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

    .line 1754
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    goto/16 :goto_1

    .line 1756
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_16
    const/4 v2, 0x0

    .line 1757
    .local v2, "animAttr":I
    const/16 v6, 0x13

    if-eq v13, v6, :cond_23

    const/16 v7, 0x18

    if-eq v13, v7, :cond_21

    const/16 v1, 0x19

    if-eq v13, v1, :cond_1f

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_f

    .line 1812
    :pswitch_0
    if-eqz v14, :cond_17

    .line 1813
    const/16 v7, 0x19

    goto :goto_4

    .line 1814
    :cond_17
    nop

    :goto_4
    move v2, v7

    goto/16 :goto_f

    .line 1807
    :pswitch_1
    if-eqz v14, :cond_18

    .line 1808
    const/16 v19, 0x16

    goto :goto_5

    .line 1809
    :cond_18
    const/16 v19, 0x17

    :goto_5
    move/from16 v2, v19

    .line 1810
    goto/16 :goto_f

    .line 1802
    :pswitch_2
    if-eqz v14, :cond_19

    .line 1803
    const/16 v1, 0x14

    goto :goto_6

    .line 1804
    :cond_19
    const/16 v1, 0x15

    :goto_6
    move v2, v1

    .line 1805
    goto :goto_f

    .line 1792
    :pswitch_3
    if-eqz v14, :cond_1a

    .line 1793
    const/16 v1, 0x10

    goto :goto_7

    .line 1794
    :cond_1a
    const/16 v1, 0x11

    :goto_7
    move v2, v1

    .line 1795
    goto :goto_f

    .line 1797
    :pswitch_4
    if-eqz v14, :cond_1b

    .line 1798
    goto :goto_8

    .line 1799
    :cond_1b
    move v3, v6

    :goto_8
    move v2, v3

    .line 1800
    goto :goto_f

    .line 1787
    :pswitch_5
    if-eqz v14, :cond_1c

    .line 1788
    const/16 v1, 0xe

    goto :goto_9

    .line 1789
    :cond_1c
    const/16 v1, 0xf

    :goto_9
    move v2, v1

    .line 1790
    goto :goto_f

    .line 1782
    :pswitch_6
    if-eqz v14, :cond_1d

    .line 1783
    const/16 v1, 0xc

    goto :goto_a

    .line 1784
    :cond_1d
    const/16 v1, 0xd

    :goto_a
    move v2, v1

    .line 1785
    goto :goto_f

    .line 1777
    :pswitch_7
    if-eqz v14, :cond_1e

    .line 1778
    const/16 v3, 0xa

    goto :goto_b

    .line 1779
    :cond_1e
    move v3, v8

    :goto_b
    move v2, v3

    .line 1780
    goto :goto_f

    .line 1766
    :cond_1f
    :pswitch_8
    if-eqz v14, :cond_20

    .line 1767
    goto :goto_c

    .line 1768
    :cond_20
    const/4 v5, 0x7

    :goto_c
    move v2, v5

    .line 1769
    goto :goto_f

    .line 1760
    :cond_21
    :pswitch_9
    if-eqz v14, :cond_22

    .line 1761
    move v1, v10

    goto :goto_d

    .line 1762
    :cond_22
    move v1, v0

    :goto_d
    move v2, v1

    .line 1763
    goto :goto_f

    .line 1772
    :cond_23
    :pswitch_a
    if-eqz v14, :cond_24

    .line 1773
    goto :goto_e

    .line 1774
    :cond_24
    const/16 v4, 0x9

    :goto_e
    move v2, v4

    .line 1775
    nop

    .line 1816
    :goto_f
    if-eqz v2, :cond_25

    invoke-virtual {v11, v12, v2, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_10

    :cond_25
    const/4 v7, 0x0

    :goto_10
    move-object v1, v7

    .line 1817
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

    .line 1823
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v2    # "animAttr":I
    .restart local v24    # "a":Landroid/view/animation/Animation;
    :goto_11
    move-object/from16 v1, p13

    move-object/from16 v0, v24

    goto/16 :goto_18

    .line 1727
    .end local v24    # "a":Landroid/view/animation/Animation;
    :cond_27
    move/from16 v17, v10

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    .line 1729
    :goto_12
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v0, :cond_28

    move/from16 v1, v23

    goto :goto_13

    :cond_28
    move/from16 v1, v20

    :goto_13
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1731
    nop

    .line 1732
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1731
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

    .line 1734
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

    .line 1740
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Z
    .end local v5    # "protoLogParam4":Ljava/lang/String;
    goto/16 :goto_1

    .line 1715
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2a
    move v12, v0

    move v9, v1

    move/from16 v17, v10

    const/16 v16, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x2

    .line 1717
    :goto_15
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v9, :cond_2b

    move/from16 v7, v19

    goto :goto_16

    :cond_2b
    move/from16 v7, v16

    :goto_16
    iput-boolean v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1719
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v0

    move-object/from16 v1, p13

    invoke-virtual {v11, v0, v15, v13, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;ILcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1721
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

    .line 1726
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v5    # "protoLogParam3":Z
    .end local v6    # "protoLogParam4":Ljava/lang/String;
    nop

    .line 1823
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

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 620
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 621
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 622
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 623
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 624
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 627
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 628
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 631
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 659
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "WindowManager"

    const-string v2, "Unable to load animation resource"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 1985
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1987
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1988
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1989
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1991
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

    .line 1862
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1864
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1865
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1866
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1867
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1869
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1870
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1872
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

    .line 1909
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1911
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1912
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1913
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1914
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1917
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1919
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1886
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1888
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1889
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1892
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 11
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1924
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1926
    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1927
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1928
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1929
    if-eqz p1, :cond_3

    .line 1930
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1931
    aget-object v1, p1, v0

    .line 1932
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_2

    .line 1933
    sget-object v2, Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;

    const-class v3, Lcom/android/server/wm/Task;

    .line 1934
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget v4, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1933
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    .line 1935
    .local v2, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1936
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1937
    if-nez v3, :cond_1

    .line 1938
    goto :goto_2

    .line 1940
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1941
    if-nez v0, :cond_2

    .line 1944
    iget-object v4, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1945
    .local v4, "rect":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 1946
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1945
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1930
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1951
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1952
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1953
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1955
    :cond_4
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1960
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1961
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1962
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1963
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1964
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1965
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1966
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1968
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 1971
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 9
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1974
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

    .line 1976
    .end local v0    # "protoLogParam0":Z
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1978
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1979
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1982
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1876
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1878
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1879
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1882
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    .line 1997
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1999
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2000
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2002
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

    .line 1896
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1898
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1899
    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1900
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1901
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1903
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1905
    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 3

    .line 1853
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1858
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 18
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2247
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

    .line 2252
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

    .line 2254
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

    .line 2261
    :cond_2
    if-nez p2, :cond_6

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v4, v6, :cond_6

    .line 2263
    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2265
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2266
    :cond_3
    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    const/4 v4, 0x7

    .line 2267
    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2269
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2270
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2273
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2256
    :cond_5
    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2276
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v4

    .line 2277
    .local v4, "prepared":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2279
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2281
    :cond_7
    return v4
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 1030
    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    const/4 v0, 0x7

    if-eq p4, v0, :cond_0

    .line 1036
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_0

    .line 1033
    .end local v0    # "duration":I
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 1034
    .restart local v0    # "duration":I
    nop

    .line 1039
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

    .line 1011
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 1012
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1014
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1015
    if-eqz p6, :cond_1

    .line 1016
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1018
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1019
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .locals 2

    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2397
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 2238
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2239
    return-void
.end method

.method setIdle()V
    .locals 1

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 375
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "closingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "changingApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 353
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 357
    return-void
.end method

.method setLastRemoteAnimationController(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 1618
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1619
    return-void
.end method

.method setNextAppTransitionType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1622
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1623
    return-void
.end method

.method setReady()V
    .locals 1

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 366
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 367
    return-void
.end method

.method setTimeout()V
    .locals 1

    .line 382
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 383
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2040
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

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method updateBooster()V
    .locals 2

    .line 500
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 501
    return-void
.end method
