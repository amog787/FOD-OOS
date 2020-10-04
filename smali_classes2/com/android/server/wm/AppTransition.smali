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

    .line 162
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 182
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 205
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 241
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 250
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 255
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 258
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 276
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 280
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 281
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 282
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 283
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 285
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 287
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 291
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 293
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 305
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 318
    const-string v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 319
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 323
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 325
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IRemoteCallback;

    .line 150
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .line 2142
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2150
    :cond_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2148
    :cond_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2146
    :cond_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2144
    :cond_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "transition"    # I

    .line 2068
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2136
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

    .line 2133
    :pswitch_0
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2130
    :pswitch_1
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2127
    :pswitch_2
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2124
    :pswitch_3
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2121
    :pswitch_4
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2118
    :pswitch_5
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2115
    :pswitch_6
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2112
    :pswitch_7
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2109
    :pswitch_8
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2106
    :pswitch_9
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2103
    :pswitch_a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2100
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2097
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2094
    :pswitch_d
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 2091
    :pswitch_e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 2088
    :pswitch_f
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 2085
    :pswitch_10
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 2082
    :pswitch_11
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 2079
    :pswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 2076
    :pswitch_13
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 2073
    :cond_0
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 2070
    :cond_1
    const-string v0, "TRANSIT_UNSET"

    return-object v0

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

    .line 861
    if-nez p1, :cond_0

    .line 862
    const-wide/16 v0, 0x150

    return-wide v0

    .line 864
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 865
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 864
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 866
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

    .line 2024
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

    .line 734
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 735
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 736
    int-to-float v1, p0

    return v1

    .line 738
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1392
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 27
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1400
    .local v4, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1401
    .local v5, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1402
    .local v6, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 1403
    .local v7, "destHeight":F
    if-eqz p4, :cond_0

    div-float v8, v4, v6

    goto :goto_0

    :cond_0
    div-float v8, v6, v4

    :goto_0
    move v10, v8

    .line 1404
    .local v10, "scaleH":F
    if-eqz p4, :cond_1

    div-float v8, v5, v7

    goto :goto_1

    :cond_1
    div-float v8, v7, v5

    :goto_1
    move v12, v8

    .line 1405
    .local v12, "scaleV":F
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1406
    .local v8, "set":Landroid/view/animation/AnimationSet;
    const/4 v9, 0x0

    if-nez v3, :cond_2

    .line 1407
    move v11, v9

    goto :goto_2

    :cond_2
    iget v11, v3, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v13

    :goto_2
    move v15, v11

    .line 1408
    .local v15, "surfaceInsetsH":I
    if-nez v3, :cond_3

    .line 1409
    goto :goto_3

    :cond_3
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    :goto_3
    move v14, v9

    .line 1412
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4

    move v9, v6

    goto :goto_4

    :cond_4
    move v9, v4

    :goto_4
    int-to-float v11, v15

    add-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v23, v9, v11

    .line 1413
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move v9, v5

    :goto_5
    int-to-float v13, v14

    add-float/2addr v9, v13

    div-float v24, v9, v11

    .line 1414
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6

    .line 1415
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v9, v16

    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v23

    move/from16 v26, v15

    .end local v15    # "surfaceInsetsH":I
    .local v26, "surfaceInsetsH":I
    move/from16 v15, v24

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6

    .line 1416
    .end local v25    # "surfaceInsetsV":I
    .end local v26    # "surfaceInsetsH":I
    .restart local v14    # "surfaceInsetsV":I
    .restart local v15    # "surfaceInsetsH":I
    :cond_6
    move/from16 v25, v14

    move/from16 v26, v15

    .end local v14    # "surfaceInsetsV":I
    .end local v15    # "surfaceInsetsH":I
    .restart local v25    # "surfaceInsetsV":I
    .restart local v26    # "surfaceInsetsH":I
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v9

    move/from16 v18, v10

    move/from16 v20, v12

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_6
    move-object/from16 v9, v16

    .line 1417
    .local v9, "scale":Landroid/view/animation/ScaleAnimation;
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    .line 1418
    .local v11, "sourceHCenter":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1419
    .local v13, "sourceVCenter":I
    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 1420
    .local v14, "destHCenter":I
    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 1421
    .local v15, "destVCenter":I
    if-eqz p4, :cond_7

    sub-int v16, v11, v14

    goto :goto_7

    :cond_7
    sub-int v16, v14, v11

    :goto_7
    move/from16 v17, v16

    .line 1422
    .local v17, "fromX":I
    if-eqz p4, :cond_8

    sub-int v16, v13, v15

    goto :goto_8

    :cond_8
    sub-int v16, v15, v13

    :goto_8
    move/from16 v18, v16

    .line 1423
    .local v18, "fromY":I
    if-eqz p4, :cond_9

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v2, v17

    .end local v17    # "fromX":I
    .local v2, "fromX":I
    int-to-float v3, v2

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "sourceHeight":F
    .local v4, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v5, v4

    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v1, v3, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 1424
    .end local v2    # "fromX":I
    .end local v19    # "destWidth":F
    .local v4, "sourceWidth":F
    .restart local v5    # "sourceHeight":F
    .restart local v6    # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_9
    move/from16 v19, v6

    move/from16 v2, v17

    const/4 v6, 0x0

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "sourceHeight":F
    .end local v6    # "destWidth":F
    .restart local v2    # "fromX":I
    .local v4, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19    # "destWidth":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v2

    int-to-float v5, v4

    invoke-direct {v1, v6, v3, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_9
    nop

    .line 1425
    .local v1, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1426
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1428
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1429
    .local v3, "callback":Landroid/os/IRemoteCallback;
    if-eqz v3, :cond_a

    .line 1430
    new-instance v5, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1444
    :cond_a
    return-object v8
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 30
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 873
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v5, 0x1

    if-eqz p2, :cond_8

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 875
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 879
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 883
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 884
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

    .line 885
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

    .line 883
    :goto_1
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 888
    const/4 v7, 0x0

    .line 889
    .local v7, "t":F
    if-lez v15, :cond_2

    .line 890
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2

    .line 889
    :cond_2
    move/from16 v16, v7

    .line 892
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

    .line 893
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 894
    .local v8, "translationX":I
    move v9, v7

    .line 895
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 896
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 897
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 898
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 899
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 900
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 901
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 906
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v14, v18, v20

    if-le v13, v14, :cond_3

    .line 907
    sub-int v13, v18, v20

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v13, v14

    .line 908
    const/4 v9, 0x0

    .line 909
    const/4 v11, 0x0

    .line 910
    const/4 v12, 0x1

    move v14, v7

    move/from16 v22, v9

    move/from16 v21, v11

    goto :goto_3

    .line 906
    :cond_3
    move v14, v7

    move/from16 v22, v9

    move/from16 v21, v11

    .line 912
    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v14, "translationY":I
    .local v21, "clipStartY":I
    .local v22, "translationYCorrection":I
    :goto_3
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_4

    .line 913
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 914
    const/4 v10, 0x0

    .line 915
    const/4 v12, 0x1

    .line 917
    :cond_4
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_5

    .line 918
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 919
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 920
    const/4 v12, 0x1

    move v11, v10

    move v13, v12

    move v12, v8

    goto :goto_4

    .line 917
    :cond_5
    move v11, v10

    move v13, v12

    move v12, v8

    .line 922
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "clipStartX":I
    .local v12, "translationX":I
    .local v13, "cutOff":Z
    :goto_4
    int-to-float v7, v12

    int-to-float v8, v14

    move-object/from16 v10, p4

    invoke-direct {v0, v13, v7, v8, v10}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 926
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 927
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v11

    const/4 v4, 0x0

    invoke-direct {v7, v11, v5, v4, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 928
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 929
    long-to-float v7, v8

    const/high16 v24, 0x40200000    # 2.5f

    div-float v7, v7, v24

    float-to-long v3, v7

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 931
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v12

    int-to-float v7, v14

    const/4 v2, 0x0

    invoke-direct {v3, v4, v2, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v2, v3

    .line 932
    .local v2, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v13, :cond_6

    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_5

    .line 933
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 932
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 934
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 936
    new-instance v3, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 937
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v4, v21, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v7

    move-object v7, v3

    move-wide/from16 v27, v8

    .end local v8    # "duration":J
    .local v27, "duration":J
    move/from16 v8, v21

    move v9, v4

    move/from16 v10, v24

    move v4, v11

    .end local v11    # "clipStartX":I
    .local v4, "clipStartX":I
    move v11, v15

    move/from16 v24, v12

    .end local v12    # "translationX":I
    .local v24, "translationX":I
    move/from16 v12, v22

    move/from16 v29, v13

    .end local v13    # "cutOff":Z
    .local v29, "cutOff":Z
    move/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "translationY":I
    .local v25, "translationY":I
    move-object/from16 v14, v26

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 941
    .local v3, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    move-wide/from16 v7, v27

    .end local v27    # "duration":J
    .local v7, "duration":J
    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 945
    const-wide/16 v9, 0x4

    div-long v9, v7, v9

    .line 946
    .local v9, "alphaDuration":J
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 947
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 948
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 950
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 951
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 952
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 953
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 954
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 955
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 956
    invoke-virtual {v12, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 957
    move-object/from16 v23, v12

    .line 958
    .local v23, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 959
    iput-wide v7, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 963
    if-eqz v29, :cond_7

    .line 964
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_6

    :cond_7
    nop

    :goto_6
    iput v13, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 965
    .end local v2    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v3    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v4    # "clipStartX":I
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
    .end local v21    # "clipStartY":I
    .end local v22    # "translationYCorrection":I
    .end local v24    # "translationX":I
    .end local v25    # "translationY":I
    .end local v29    # "cutOff":Z
    move-object/from16 v4, v23

    goto :goto_a

    .line 967
    .end local v23    # "anim":Landroid/view/animation/Animation;
    :cond_8
    const/4 v2, 0x6

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    .line 973
    const-wide/16 v2, 0x150

    .local v2, "duration":J
    goto :goto_7

    .line 970
    .end local v2    # "duration":J
    :cond_9
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v2, v2

    .line 971
    .restart local v2    # "duration":J
    nop

    .line 976
    :goto_7
    const/16 v4, 0xe

    if-eq v1, v4, :cond_b

    const/16 v4, 0xf

    if-ne v1, v4, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_8

    .line 986
    :cond_a
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v5, 0x1

    .local v4, "anim":Landroid/view/animation/Animation;
    goto :goto_9

    .line 976
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_b
    const/high16 v5, 0x3f800000    # 1.0f

    .line 982
    :goto_8
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 983
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 988
    :goto_9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 989
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 990
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 992
    .end local v2    # "duration":J
    :goto_a
    return-object v4
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1206
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

    .line 1209
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1210
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1207
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

    .line 1215
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1216
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1218
    cmpl-float v1, p3, p4

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    if-lez v1, :cond_0

    .line 1220
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

    .line 1223
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

    .line 1225
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

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 746
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 747
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 749
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 750
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 751
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 752
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 753
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 754
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 756
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 757
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 759
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 760
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 761
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 762
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 763
    move-object v4, v6

    .line 764
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

    .line 774
    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 770
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 771
    .restart local v4    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 781
    :goto_1
    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/4 v6, 0x7

    if-eq v1, v6, :cond_3

    .line 787
    const-wide/16 v6, 0x150

    .local v6, "duration":J
    goto :goto_2

    .line 784
    .end local v6    # "duration":J
    :cond_3
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v6, v6

    .line 785
    .restart local v6    # "duration":J
    nop

    .line 790
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 791
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 792
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 793
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 794
    return-object v4
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/IRemoteCallback;

    .line 2380
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2382
    goto :goto_0

    .line 2381
    :catch_0
    move-exception v0

    .line 2383
    :goto_0
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .line 2031
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    .line 2032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2033
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2035
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2036
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2054
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .line 1229
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1230
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1232
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1237
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1240
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 573
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
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

    .line 573
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_2
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_6

    .line 580
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "android"

    .line 581
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 582
    .local v2, "resId":I
    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4

    .line 583
    const-string v0, "android"

    .line 585
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

    .line 587
    :cond_5
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    return-object v1

    .line 590
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_6
    return-object v2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 594
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

    .line 595
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    if-eqz p1, :cond_3

    .line 597
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_1

    .line 598
    const-string p1, "android"

    .line 600
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

    .line 602
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 605
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 800
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 805
    :goto_1
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .locals 5

    .line 2346
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2347
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2348
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 2349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2351
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 2352
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2353
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_2

    .line 2354
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** APP TRANSITION TIMEOUT. displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isTransitionSet()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2357
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mOpeningApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 2358
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mClosingApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 2359
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mChangingApps.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 2360
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2354
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_3

    .line 2366
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2367
    .local v2, "appsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2368
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/policy/OpQuickPayInjector;->notifyAppLaunchFailedLw(Ljava/lang/String;)V

    .line 2367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2372
    .end local v2    # "appsCount":I
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 2373
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2375
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2376
    return-void

    .line 2375
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static isActivityTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2328
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

    .line 2334
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2305
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

    .line 2310
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

    .line 2322
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

    .line 2315
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

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

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 627
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 629
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 630
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 632
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 634
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 638
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 640
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_0

    .line 641
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 644
    .end local v0    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "transit"    # I

    .line 1851
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 1852
    const/4 v0, 0x0

    return-object v0

    .line 1854
    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1856
    .local v0, "toShade":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private needsBoosting()Z
    .locals 5

    .line 501
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

    .line 502
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

    .line 529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
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

    .line 536
    move-object v0, p0

    const/4 v1, 0x0

    .line 537
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 538
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

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private prepare()Z
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 426
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 427
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 428
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 429
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 430
    const/4 v0, 0x1

    return v0

    .line 432
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

    .line 823
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 825
    return-void
.end method

.method private setAppTransition(II)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 341
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 342
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 343
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 345
    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 487
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 488
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 489
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 2341
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

    .line 2157
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2177
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

    .line 2175
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2163
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2173
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2171
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2169
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2167
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2165
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2161
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2159
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

    .line 658
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a0096

    if-ne p1, v0, :cond_0

    .line 659
    const v0, 0x10a0099

    return v0

    .line 661
    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const v0, 0x10a0095

    if-ne p1, v0, :cond_1

    .line 662
    const v0, 0x10a0098

    return v0

    .line 664
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

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 465
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 466
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 467
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 468
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 469
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
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
    .param p10, "taskId"    # I

    .line 1253
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1254
    .local v15, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1255
    .local v16, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1256
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1257
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v17, v1

    .line 1258
    .local v17, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1259
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v18, v1

    .line 1260
    .local v18, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1261
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v19, v1, v2

    .line 1263
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

    .line 1376
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :cond_3
    if-ne v9, v3, :cond_4

    .line 1369
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1371
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1373
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1355
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_5
    if-ne v9, v3, :cond_6

    .line 1358
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1360
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1362
    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move/from16 v21, v15

    goto/16 :goto_e

    .line 1266
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    :goto_2
    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    .line 1267
    .local v3, "scaleUp":Z
    :goto_3
    if-eqz p9, :cond_9

    if-eqz v3, :cond_9

    .line 1268
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1270
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_9
    if-eqz p9, :cond_a

    .line 1271
    invoke-direct {v7, v10, v12, v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v8, v0

    move/from16 v21, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e

    .line 1274
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1277
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1278
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1282
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1283
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1286
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1287
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1289
    move/from16 v2, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1291
    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v1, v15, v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v17, v1

    .line 1293
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_b

    .line 1294
    div-float v2, v18, v1

    float-to-int v2, v2

    .line 1295
    .local v2, "unscaledThumbHeight":I
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1298
    .end local v2    # "unscaledThumbHeight":I
    :cond_b
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1300
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1301
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

    .line 1302
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

    .line 1303
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v26, v8, v9

    .line 1304
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v27, v8, v9

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1305
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1306
    .local v8, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v9, v20

    .line 1307
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    mul-float/2addr v12, v1

    sub-float/2addr v9, v12

    .line 1308
    .local v9, "x":F
    iget-object v12, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    int-to-float v12, v12

    .line 1309
    .local v12, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v14, v20

    .line 1310
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v20

    mul-float/2addr v10, v1

    sub-float/2addr v14, v10

    .line 1314
    .local v14, "y":F
    iget-boolean v10, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v10, :cond_10

    iget v10, v11, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_10

    if-eqz v3, :cond_10

    .line 1315
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

    .line 1316
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v14, v1

    goto :goto_8

    .line 1314
    .end local v20    # "scale":F
    .end local v21    # "appWidth":I
    .restart local v1    # "scale":F
    .restart local v15    # "appWidth":I
    :cond_10
    move/from16 v20, v1

    move/from16 v21, v15

    .line 1318
    .end local v1    # "scale":F
    .end local v15    # "appWidth":I
    .restart local v20    # "scale":F
    .restart local v21    # "appWidth":I
    :goto_8
    sub-float v1, v8, v9

    .line 1319
    .local v1, "startX":F
    sub-float v10, v12, v14

    .line 1320
    .local v10, "startY":F
    if-eqz v3, :cond_11

    .line 1321
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

    .line 1322
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

    .line 1323
    .local v8, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_12

    .line 1324
    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    const/4 v15, 0x0

    invoke-direct {v7, v1, v15, v9, v15}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_a

    .line 1325
    :cond_12
    const/4 v15, 0x0

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v10, v9

    invoke-direct {v7, v15, v1, v15, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v9

    :goto_a
    nop

    .line 1327
    .local v9, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1328
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1329
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1331
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

    .line 1333
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

    .line 1334
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1336
    if-eqz v3, :cond_14

    .line 1337
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_b

    .line 1338
    :cond_14
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_b
    nop

    .line 1339
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_15

    .line 1340
    int-to-float v2, v5

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v19, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_c

    .line 1342
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

    .line 1345
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1348
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_d
    move-object v1, v0

    .line 1349
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1351
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    move-object v8, v1

    .line 1379
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v3    # "scaleUp":Z
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_e
    nop

    .line 1380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 1379
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

    .line 1057
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1058
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1060
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1061
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1062
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1063
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1065
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1066
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

    .line 1071
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1072
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1073
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1075
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 1079
    const-string v0, "android"

    const v1, 0x10a00a8

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1081
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1082
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1081
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .locals 29
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    .line 1092
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1093
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_0

    int-to-float v1, v10

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v11, v1

    .line 1094
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1095
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1097
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1098
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1105
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1106
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1107
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1111
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

    .line 1112
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

    .line 1113
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1114
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1115
    .local v0, "pivotY":F
    move/from16 v16, v0

    .end local v0    # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v0, :cond_1

    .line 1118
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1119
    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    move v0, v2

    move/from16 v22, v15

    move/from16 v23, v16

    move v2, v1

    move v1, v14

    goto :goto_1

    .line 1115
    :cond_1
    move v0, v2

    move/from16 v22, v15

    move/from16 v23, v16

    move v2, v1

    move v1, v14

    goto :goto_1

    .line 1122
    .end local v1    # "fromX":F
    .end local v2    # "fromY":F
    .end local v3    # "toX":F
    .end local v14    # "toY":F
    .end local v15    # "pivotX":F
    .end local v16    # "pivotY":F
    :cond_2
    const/4 v0, 0x0

    .line 1123
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1124
    .local v1, "pivotY":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 1125
    .local v2, "fromX":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1126
    .local v3, "fromY":F
    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    .line 1127
    .local v14, "toX":F
    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move/from16 v22, v0

    move/from16 v23, v1

    move v0, v3

    move v3, v14

    move v1, v15

    .line 1129
    .end local v14    # "toX":F
    .local v0, "fromY":F
    .local v1, "toY":F
    .local v3, "toX":F
    .local v22, "pivotX":F
    .local v23, "pivotY":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1130
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1131
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v16, v14

    .end local v14    # "duration":J
    .local v16, "duration":J
    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_7

    .line 1133
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

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1134
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1135
    move-wide/from16 v14, v24

    .end local v24    # "duration":J
    .restart local v14    # "duration":J
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1136
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

    .line 1137
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_3

    .line 1138
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1137
    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1139
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_4

    .line 1140
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    move-wide/from16 v8, v16

    goto :goto_3

    .line 1141
    :cond_4
    move-wide v8, v14

    .line 1139
    :goto_3
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1142
    invoke-direct {v7, v2, v3, v0, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1143
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1144
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1146
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1147
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1151
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1152
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1153
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1155
    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    .line 1156
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

    .end local v0    # "fromY":F
    .local v28, "fromY":F
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_4

    .line 1155
    .end local v26    # "thumbWidthI":I
    .end local v27    # "thumbHeightI":I
    .end local v28    # "fromY":F
    .restart local v0    # "fromY":F
    .restart local v10    # "thumbWidthI":I
    .restart local v12    # "thumbHeightI":I
    :cond_5
    move/from16 v28, v0

    move/from16 v26, v10

    move/from16 v27, v12

    .line 1162
    .end local v0    # "fromY":F
    .end local v10    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .restart local v26    # "thumbWidthI":I
    .restart local v27    # "thumbHeightI":I
    .restart local v28    # "fromY":F
    :goto_4
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1163
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1164
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1167
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1168
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1169
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_6

    .line 1171
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1173
    :cond_6
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1174
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1175
    move-object v0, v10

    .line 1176
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .local v0, "a":Landroid/view/animation/Animation;
    move-object v8, v0

    move-wide v10, v14

    move/from16 v5, v28

    goto :goto_5

    .line 1178
    .end local v14    # "duration":J
    .end local v24    # "thumbWidth":F
    .end local v25    # "appWidth":I
    .end local v26    # "thumbWidthI":I
    .end local v27    # "thumbHeightI":I
    .end local v28    # "fromY":F
    .local v0, "fromY":F
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

    .end local v0    # "fromY":F
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
    .restart local v28    # "fromY":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide v10, v14

    .end local v14    # "duration":J
    .local v10, "duration":J
    move-object v14, v0

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1179
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1180
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1181
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1182
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1183
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1184
    move/from16 v5, v28

    .end local v28    # "fromY":F
    .local v5, "fromY":F
    invoke-direct {v7, v3, v2, v1, v5}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1185
    .restart local v8    # "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1186
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1189
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1190
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1191
    iget-boolean v13, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v13, :cond_8

    .line 1193
    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1195
    :cond_8
    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1196
    move-object v0, v12

    move-object v8, v0

    .line 1199
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v15, v5

    .end local v5    # "fromY":F
    .local v15, "fromY":F
    move-object/from16 v0, p0

    move/from16 v16, v1

    .end local v1    # "toY":F
    .local v16, "toY":F
    move-object v1, v8

    move/from16 v17, v2

    .end local v2    # "fromX":F
    .local v17, "fromX":F
    move/from16 v2, v25

    move/from16 v18, v3

    .end local v3    # "toX":F
    .local v18, "toX":F
    move v3, v4

    move-wide v4, v12

    move-object v12, v6

    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 23
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

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
    move/from16 v5, p4

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

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

    .line 2190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 2193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const-string v1, "mNextAppTransitionPackage="

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2206
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    goto/16 :goto_0

    .line 2227
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    .line 2212
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2215
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2219
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2221
    goto :goto_0

    .line 2198
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    nop

    .line 2236
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 2237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2240
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 2241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastChangingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
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

.method freeze()V
    .locals 3

    .line 472
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 477
    .local v0, "transit":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_0

    .line 478
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 480
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 483
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 484
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 552
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 553
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 558
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mIsNotificationRemoteInputeDraft:Z

    if-eqz v1, :cond_1

    .line 564
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 565
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

    .line 569
    :cond_1
    return v0
.end method

.method getAppStackClipMode()I
    .locals 2

    .line 1863
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1869
    :cond_0
    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1871
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1870
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 1867
    :goto_1
    return v0

    .line 1865
    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .locals 2
    .param p1, "taskId"    # I

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 383
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 386
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 546
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .line 838
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .line 831
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getLastRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 808
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 809
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 812
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    .line 817
    :cond_1
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 813
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting rect for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requested, but not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "WindowManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 819
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

    .line 1036
    if-eqz p1, :cond_1

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return v0

    .line 1040
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1043
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 1044
    const/4 v0, 0x1

    return v0

    .line 1046
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .locals 1

    .line 1875
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I
    .locals 11
    .param p1, "transit"    # I
    .param p2, "topOpeningApp"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    .line 440
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 442
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 443
    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 446
    .local v0, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 447
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    move-wide v5, v1

    .line 448
    if-eqz v0, :cond_2

    .line 449
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_2

    .line 450
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    :goto_2
    const-wide/16 v9, 0x78

    .line 446
    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(IJJJ)I

    move-result v1

    .line 452
    .local v1, "redoLayout":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    .line 453
    invoke-virtual {v2, p3, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 455
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v2, :cond_3

    .line 456
    invoke-virtual {v2}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 458
    :cond_3
    return v1
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isCustomAnimationType()Z
    .locals 2

    .line 1638
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    .line 412
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

    .line 406
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

    .line 401
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

    .line 391
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

    .line 397
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .line 356
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

    .line 366
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

    .line 374
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

    .line 333
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

    .line 329
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

    .line 2037
    const/4 v0, 0x0

    .line 2039
    .local v0, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2040
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2043
    goto :goto_0

    .line 2041
    :catch_0
    move-exception v1

    .line 2042
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

    .line 2044
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2045
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2046
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2049
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2050
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2051
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2052
    return-void

    .line 2050
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

    .line 276
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 21
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
    .param p13, "taskId"    # I

    .line 1669
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v14, :cond_0

    .line 1670
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1b

    .line 1671
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v0, 0x16

    if-ne v13, v0, :cond_1

    .line 1672
    const/4 v0, 0x0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1b

    .line 1673
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    const/16 v1, 0x17

    if-ne v13, v1, :cond_2

    if-nez v14, :cond_2

    .line 1674
    const v0, 0x10a0153

    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1b

    .line 1675
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_3

    .line 1676
    const/4 v0, 0x0

    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1b

    .line 1677
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    const/16 v2, 0x8

    const/4 v3, 0x6

    const-string v10, " isEntrance="

    const-string v9, " transit="

    const-string v8, " Callers="

    const-string v7, "WindowManager"

    const/4 v6, 0x3

    if-eqz p11, :cond_8

    if-eq v13, v3, :cond_4

    if-eq v13, v2, :cond_4

    const/16 v4, 0xa

    if-ne v13, v4, :cond_8

    .line 1680
    :cond_4
    if-eqz v14, :cond_5

    .line 1681
    const v0, 0x10a0146

    goto :goto_0

    .line 1682
    :cond_5
    const v0, 0x10a0147

    .line 1680
    :goto_0
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1683
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation voice: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1683
    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_7
    :goto_1
    move/from16 v7, p13

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_1b

    .line 1687
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_8
    const/16 v4, 0x9

    const/4 v5, 0x7

    if-eqz p11, :cond_c

    if-eq v13, v5, :cond_9

    if-eq v13, v4, :cond_9

    const/16 v0, 0xb

    if-ne v13, v0, :cond_c

    .line 1690
    :cond_9
    if-eqz v14, :cond_a

    .line 1691
    const v0, 0x10a0144

    goto :goto_2

    .line 1692
    :cond_a
    const v0, 0x10a0145

    .line 1690
    :goto_2
    invoke-direct {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1693
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_7

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation voice: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1697
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_c
    const/16 v0, 0x12

    const-string v4, " nextAppTransition="

    const-string v3, "applyAnimation: anim="

    if-ne v13, v0, :cond_f

    .line 1698
    move-object/from16 v0, p8

    invoke-direct {v11, v15, v0}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1699
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_e

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1699
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_e
    :goto_3
    move/from16 v7, p13

    move-object v0, v1

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_1b

    .line 1704
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_f
    move-object/from16 v0, p8

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1705
    iget-object v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_10

    .line 1706
    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_4

    :cond_10
    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1705
    :goto_4
    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1707
    .restart local v1    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_e

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1707
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1712
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_12
    if-ne v1, v5, :cond_14

    .line 1713
    iget-object v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1714
    .restart local v1    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_e

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM_IN_PLACE transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1714
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1719
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_14
    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    .line 1720
    move-object/from16 v1, p7

    invoke-direct {v11, v13, v14, v15, v1}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1721
    .local v2, "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_15

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_16

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CLIP_REVEAL transit="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1721
    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_16
    :goto_5
    move/from16 v7, p13

    move-object v0, v2

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_1b

    .line 1726
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_17
    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 1727
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1728
    .restart local v1    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_18

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_e

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_SCALE_UP transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1728
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1733
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_19
    if-eq v1, v6, :cond_34

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    move-object v13, v3

    move-object v12, v4

    move/from16 v16, v6

    move-object v5, v7

    move-object v4, v8

    move-object v15, v9

    move-object v0, v10

    move v3, v14

    goto/16 :goto_18

    .line 1747
    :cond_1a
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2f

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1b

    goto/16 :goto_13

    .line 1762
    :cond_1b
    const/16 v4, 0x9

    if-ne v1, v4, :cond_1c

    if-eqz v14, :cond_1c

    .line 1763
    const v1, 0x10a013c

    const-string v2, "android"

    invoke-direct {v11, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1765
    .restart local v1    # "a":Landroid/view/animation/Animation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance=true Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, p13

    move-object v0, v1

    move v5, v13

    move v3, v14

    move-object v6, v15

    goto/16 :goto_1b

    .line 1769
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_1c
    const/16 v1, 0x1b

    if-ne v13, v1, :cond_1e

    .line 1771
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1772
    .restart local v1    # "a":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x150

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1773
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_e

    .line 1774
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1774
    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1779
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_1e
    const/4 v1, 0x0

    .line 1780
    .local v1, "animAttr":I
    const/16 v4, 0x13

    if-eq v13, v4, :cond_2b

    const/16 v4, 0x18

    if-eq v13, v4, :cond_29

    const/16 v4, 0x19

    if-eq v13, v4, :cond_27

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_11

    .line 1835
    :pswitch_0
    if-eqz v14, :cond_1f

    .line 1836
    const/16 v2, 0x19

    goto :goto_6

    .line 1837
    :cond_1f
    const/16 v2, 0x18

    :goto_6
    move v1, v2

    goto/16 :goto_11

    .line 1830
    :pswitch_1
    if-eqz v14, :cond_20

    .line 1831
    const/16 v19, 0x16

    goto :goto_7

    .line 1832
    :cond_20
    const/16 v19, 0x17

    :goto_7
    move/from16 v1, v19

    .line 1833
    goto/16 :goto_11

    .line 1825
    :pswitch_2
    if-eqz v14, :cond_21

    .line 1826
    const/16 v2, 0x14

    goto :goto_8

    .line 1827
    :cond_21
    const/16 v2, 0x15

    :goto_8
    move v1, v2

    .line 1828
    goto :goto_11

    .line 1815
    :pswitch_3
    if-eqz v14, :cond_22

    .line 1816
    const/16 v2, 0x10

    goto :goto_9

    .line 1817
    :cond_22
    const/16 v2, 0x11

    :goto_9
    move v1, v2

    .line 1818
    goto :goto_11

    .line 1820
    :pswitch_4
    if-eqz v14, :cond_23

    .line 1821
    const/16 v2, 0x12

    goto :goto_a

    .line 1822
    :cond_23
    const/16 v2, 0x13

    :goto_a
    move v1, v2

    .line 1823
    goto :goto_11

    .line 1810
    :pswitch_5
    if-eqz v14, :cond_24

    .line 1811
    const/16 v2, 0xe

    goto :goto_b

    .line 1812
    :cond_24
    const/16 v2, 0xf

    :goto_b
    move v1, v2

    .line 1813
    goto :goto_11

    .line 1805
    :pswitch_6
    if-eqz v14, :cond_25

    .line 1806
    const/16 v2, 0xc

    goto :goto_c

    .line 1807
    :cond_25
    const/16 v2, 0xd

    :goto_c
    move v1, v2

    .line 1808
    goto :goto_11

    .line 1800
    :pswitch_7
    if-eqz v14, :cond_26

    .line 1801
    const/16 v2, 0xa

    goto :goto_d

    .line 1802
    :cond_26
    const/16 v2, 0xb

    :goto_d
    move v1, v2

    .line 1803
    goto :goto_11

    .line 1789
    :cond_27
    :pswitch_8
    if-eqz v14, :cond_28

    .line 1790
    goto :goto_e

    .line 1791
    :cond_28
    const/4 v5, 0x7

    :goto_e
    move v1, v5

    .line 1792
    goto :goto_11

    .line 1783
    :cond_29
    :pswitch_9
    if-eqz v14, :cond_2a

    .line 1784
    const/4 v2, 0x4

    goto :goto_f

    .line 1785
    :cond_2a
    nop

    :goto_f
    move v1, v2

    .line 1786
    goto :goto_11

    .line 1795
    :cond_2b
    :pswitch_a
    if-eqz v14, :cond_2c

    .line 1796
    const/16 v20, 0x8

    goto :goto_10

    .line 1797
    :cond_2c
    const/16 v20, 0x9

    :goto_10
    move/from16 v1, v20

    .line 1798
    nop

    .line 1839
    :goto_11
    if-eqz v1, :cond_2d

    invoke-virtual {v11, v12, v1, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_12

    :cond_2d
    const/4 v2, 0x0

    .line 1840
    .restart local v2    # "a":Landroid/view/animation/Animation;
    :goto_12
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_2e

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_16

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " animAttr=0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1840
    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1749
    .end local v1    # "animAttr":I
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_2f
    :goto_13
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v2, :cond_30

    const/4 v2, 0x1

    goto :goto_14

    :cond_30
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1751
    nop

    .line 1752
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1751
    move-object/from16 v0, p0

    move/from16 v2, p4

    move-object v5, v3

    move/from16 v3, p5

    move-object v12, v4

    move/from16 v4, p2

    move-object v13, v5

    move-object/from16 v5, p6

    move/from16 v16, v6

    move-object/from16 v6, p8

    move-object v15, v7

    move-object/from16 v7, p9

    move-object/from16 v17, v15

    move-object v15, v8

    move-object/from16 v8, p10

    move-object/from16 v18, v15

    move-object v15, v9

    move/from16 v9, p12

    move-object v14, v10

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1754
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_32

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_31

    goto :goto_15

    :cond_31
    move/from16 v3, p3

    goto :goto_17

    .line 1755
    :cond_32
    :goto_15
    iget-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_33

    .line 1756
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_16

    :cond_33
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .line 1757
    .local v1, "animName":Ljava/lang/String;
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    invoke-static/range {v16 .. v16}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1757
    move-object/from16 v5, v17

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    .end local v1    # "animName":Ljava/lang/String;
    nop

    .line 1847
    :goto_17
    move/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v7, p13

    goto/16 :goto_1b

    .line 1733
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_34
    move-object v13, v3

    move-object v12, v4

    move/from16 v16, v6

    move-object v5, v7

    move-object v4, v8

    move-object v15, v9

    move-object v0, v10

    move v3, v14

    .line 1735
    :goto_18
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    move/from16 v2, v16

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    goto :goto_19

    :cond_35
    const/4 v1, 0x0

    :goto_19
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1737
    invoke-virtual {v11, v3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move-object/from16 v6, p6

    move/from16 v7, p13

    move-object v9, v5

    move-object v8, v13

    move/from16 v5, p2

    invoke-virtual {v11, v1, v6, v5, v7}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1739
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v10, :cond_36

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v10, :cond_38

    .line 1740
    :cond_36
    iget-boolean v10, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v10, :cond_37

    .line 1741
    const-string v10, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_1a

    :cond_37
    const-string v10, "ANIM_THUMBNAIL_SCALE_DOWN"

    .line 1742
    .local v10, "animName":Ljava/lang/String;
    :goto_1a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    .end local v10    # "animName":Ljava/lang/String;
    nop

    .line 1847
    :cond_38
    move-object v0, v1

    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_1b
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

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 611
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 613
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 614
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 615
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 618
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 619
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 622
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 650
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "WindowManager"

    const-string v2, "Unable to load animation resource"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 2003
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2005
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2006
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 2007
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 2009
    :cond_0
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .line 1888
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1890
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1891
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1892
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1893
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1895
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1897
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

    .line 1934
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1936
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1937
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1938
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1939
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1942
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1944
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1911
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1913
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1914
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1917
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 9
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1949
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1951
    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1952
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1953
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1954
    if-eqz p1, :cond_2

    .line 1955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1956
    aget-object v1, p1, v0

    .line 1957
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_1

    .line 1958
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v3, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1959
    if-nez v0, :cond_1

    .line 1962
    iget-object v2, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1963
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1964
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1963
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1955
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1969
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1970
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1971
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1973
    :cond_3
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1978
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1980
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1981
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1982
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1983
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1984
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 1989
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 3
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1992
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override pending remote transitionSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1992
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1996
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1997
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 2000
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1901
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1903
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1904
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1907
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    .line 2015
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2017
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2020
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

    .line 1921
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1923
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1924
    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1925
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1926
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1928
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1930
    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 3

    .line 1879
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1884
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 6
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2262
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare app transition: transit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " alwaysKeepCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2266
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 2267
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2262
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2270
    .local v0, "allowSetCrashing":Z
    :goto_0
    if-nez p4, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2277
    :cond_2
    if-nez p2, :cond_6

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v2, v1, :cond_6

    .line 2279
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2281
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2282
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    const/4 v1, 0x7

    .line 2283
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2285
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2286
    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2289
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2272
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2292
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v1

    .line 2293
    .local v1, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2295
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2297
    :cond_7
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 1019
    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    const/4 v0, 0x7

    if-eq p4, v0, :cond_0

    .line 1025
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_0

    .line 1022
    .end local v0    # "duration":I
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 1023
    .restart local v0    # "duration":I
    nop

    .line 1028
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

    .line 1000
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 1001
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1003
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1004
    if-eqz p6, :cond_1

    .line 1005
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1007
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1008
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .locals 2

    .line 2386
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2387
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 2253
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2254
    return-void
.end method

.method setIdle()V
    .locals 1

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 371
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p4, "changingApp"    # Lcom/android/server/wm/AppWindowToken;

    .line 349
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 353
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

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 363
    return-void
.end method

.method setTimeout()V
    .locals 1

    .line 378
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2058
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

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method updateBooster()V
    .locals 2

    .line 497
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 498
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2182
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2183
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2184
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2185
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2186
    return-void
.end method
