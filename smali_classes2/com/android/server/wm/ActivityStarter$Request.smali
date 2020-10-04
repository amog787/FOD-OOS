.class Lcom/android/server/wm/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# static fields
.field private static final DEFAULT_CALLING_PID:I = 0x0

.field private static final DEFAULT_CALLING_UID:I = -0x1

.field static final DEFAULT_REAL_CALLING_PID:I = 0x0

.field static final DEFAULT_REAL_CALLING_UID:I = -0x1


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field allowBackgroundActivityStart:Z

.field allowPendingRemoteAnimationRegistryLookup:Z

.field avoidMoveToFront:Z

.field caller:Landroid/app/IApplicationThread;

.field callingPackage:Ljava/lang/String;

.field callingPid:I

.field callingUid:I

.field componentSpecified:Z

.field ephemeralIntent:Landroid/content/Intent;

.field filterCallingUid:I

.field globalConfig:Landroid/content/res/Configuration;

.field ignoreTargetSecurity:Z

.field inTask:Lcom/android/server/wm/TaskRecord;

.field intent:Landroid/content/Intent;

.field mayWait:Z

.field originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field outActivity:[Lcom/android/server/wm/ActivityRecord;

.field profilerInfo:Landroid/app/ProfilerInfo;

.field realCallingPid:I

.field realCallingUid:I

.field reason:Ljava/lang/String;

.field requestCode:I

.field resolveInfo:Landroid/content/pm/ResolveInfo;

.field resolvedType:Ljava/lang/String;

.field resultTo:Landroid/os/IBinder;

.field resultWho:Ljava/lang/String;

.field startFlags:I

.field userId:I

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field waitResult:Landroid/app/WaitResult;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 361
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 363
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 364
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 399
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 406
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 407
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 408
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 409
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 410
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 411
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 412
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 413
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 414
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 415
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 416
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 417
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 418
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 419
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 420
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 421
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 422
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 423
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 424
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 425
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 426
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    .line 427
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 428
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 429
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 430
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 431
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 432
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    .line 433
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 434
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 435
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 436
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 437
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 438
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter$Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 444
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 445
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 446
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 447
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 448
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 449
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 450
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 451
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 452
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 453
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 454
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 455
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 456
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 457
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 458
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 459
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 460
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 461
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 462
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 463
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 464
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 465
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    .line 466
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 467
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 469
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 470
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 471
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    .line 472
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 473
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 475
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 476
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 477
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 478
    return-void
.end method
