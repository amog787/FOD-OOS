.class public Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "BurnInProtectionHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final ACTION_BURN_IN_PROTECTION:Ljava/lang/String; = "android.internal.policy.action.BURN_IN_PROTECTION"

.field private static final BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

.field private static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field private static final BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

.field public static final BURN_IN_MAX_RADIUS_DEFAULT:I = -0x1

.field private static final BURN_IN_SHIFT_STEP:I = 0x2

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x64L

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BurnInProtection"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAppliedBurnInXOffset:I

.field private mAppliedBurnInYOffset:I

.field private mBurnInProtectionActive:Z

.field private final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field private mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBurnInRadiusMaxSquared:I

.field private final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFirstUpdate:Z

.field private mLastBurnInXOffset:I

.field private mLastBurnInYOffset:I

.field private final mMaxHorizontalBurnInOffset:I

.field private final mMaxVerticalBurnInOffset:I

.field private final mMinHorizontalBurnInOffset:I

.field private final mMinVerticalBurnInOffset:I

.field private mXOffsetDirection:I

.field private mYOffsetDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 47
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 49
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minHorizontalOffset"    # I
    .param p3, "maxHorizontalOffset"    # I
    .param p4, "minVerticalOffset"    # I
    .param p5, "maxVerticalOffset"    # I
    .param p6, "maxOffsetRadius"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 73
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 74
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 76
    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 78
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 79
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 86
    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    iput-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    .line 100
    iput p3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    .line 101
    iput p4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    .line 102
    iput p5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    .line 103
    const/4 v1, -0x1

    if-eq p6, v1, :cond_0

    .line 104
    mul-int v1, p6, p6

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    goto :goto_0

    .line 106
    :cond_0
    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 109
    :goto_0
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 110
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 111
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    .line 118
    nop

    .line 119
    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 120
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 121
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BurnInProtectionHelper;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    return-void
.end method

.method private adjustOffsets()V
    .locals 5

    .line 204
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    mul-int/lit8 v0, v0, 0x2

    .line 205
    .local v0, "xChange":I
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 206
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    const/4 v3, -0x1

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    if-ge v1, v2, :cond_3

    .line 209
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 211
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 213
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    mul-int/lit8 v1, v1, 0x2

    .line 214
    .local v1, "yChange":I
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 215
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    if-gt v2, v4, :cond_2

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    if-ge v2, v4, :cond_3

    .line 218
    :cond_2
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 220
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 224
    .end local v0    # "xChange":I
    .end local v1    # "yChange":I
    :cond_3
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    if-eq v0, v3, :cond_4

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    mul-int/2addr v1, v1

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    .line 227
    :cond_4
    return-void
.end method

.method private updateBurnInProtection()V
    .locals 13

    .line 140
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz v0, :cond_2

    .line 144
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    if-eqz v0, :cond_0

    .line 145
    sget-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    goto :goto_0

    .line 146
    :cond_0
    sget-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    :goto_0
    nop

    .line 147
    .local v0, "interval":J
    iget-boolean v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    if-eqz v2, :cond_1

    .line 148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    goto :goto_1

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->adjustOffsets()V

    .line 151
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 152
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 153
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 160
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    .local v2, "nowWall":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 163
    .local v4, "nowElapsed":J
    sget-wide v6, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    add-long/2addr v6, v2

    .line 165
    .local v6, "nextWall":J
    rem-long v8, v6, v0

    sub-long v8, v6, v8

    add-long/2addr v8, v0

    .line 167
    .end local v6    # "nextWall":J
    .local v8, "nextWall":J
    sub-long v6, v8, v2

    add-long/2addr v6, v4

    .line 173
    .local v6, "nextElapsed":J
    iget-object v10, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11, v6, v7, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 175
    .end local v0    # "interval":J
    .end local v2    # "nowWall":J
    .end local v4    # "nowElapsed":J
    .end local v6    # "nextElapsed":J
    .end local v8    # "nextWall":J
    goto :goto_2

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    :goto_2
    return-void
.end method


# virtual methods
.method public cancelBurnInProtection()V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    .line 186
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BurnInProtection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBurnInProtectionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHorizontalBurnInOffsetsBounds=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mVerticalBurnInOffsetsBounds=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mBurnInRadiusMaxSquared="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastBurnInOffset=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOfsetChangeDirections=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 281
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 271
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 273
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 275
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, v0, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 277
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 285
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 267
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 289
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 291
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 294
    .end local v0    # "value":F
    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .line 246
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 256
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 257
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->cancelBurnInProtection()V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->startBurnInProtection()V

    .line 263
    :cond_2
    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .line 250
    return-void
.end method

.method public startBurnInProtection()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 135
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    .line 137
    :cond_0
    return-void
.end method
